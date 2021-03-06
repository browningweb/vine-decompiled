package com.flurry.org.codehaus.jackson.map.deser;

import com.flurry.org.codehaus.jackson.JsonParser;
import com.flurry.org.codehaus.jackson.JsonProcessingException;
import com.flurry.org.codehaus.jackson.JsonToken;
import com.flurry.org.codehaus.jackson.map.BeanProperty;
import com.flurry.org.codehaus.jackson.map.DeserializationConfig.Feature;
import com.flurry.org.codehaus.jackson.map.DeserializationContext;
import com.flurry.org.codehaus.jackson.map.JsonDeserializer;
import com.flurry.org.codehaus.jackson.map.JsonMappingException;
import com.flurry.org.codehaus.jackson.map.TypeDeserializer;
import com.flurry.org.codehaus.jackson.map.introspect.AnnotatedField;
import com.flurry.org.codehaus.jackson.map.introspect.AnnotatedMember;
import com.flurry.org.codehaus.jackson.map.introspect.AnnotatedMethod;
import com.flurry.org.codehaus.jackson.map.util.Annotations;
import com.flurry.org.codehaus.jackson.map.util.ClassUtil;
import com.flurry.org.codehaus.jackson.type.JavaType;
import com.flurry.org.codehaus.jackson.util.InternCache;
import java.io.IOException;
import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;

public abstract class SettableBeanProperty
  implements BeanProperty
{
  protected final Annotations _contextAnnotations;
  protected String _managedReferenceName;
  protected NullProvider _nullProvider;
  protected final String _propName;
  protected int _propertyIndex = -1;
  protected final JavaType _type;
  protected JsonDeserializer<Object> _valueDeserializer;
  protected TypeDeserializer _valueTypeDeserializer;

  protected SettableBeanProperty(SettableBeanProperty paramSettableBeanProperty)
  {
    this._propName = paramSettableBeanProperty._propName;
    this._type = paramSettableBeanProperty._type;
    this._contextAnnotations = paramSettableBeanProperty._contextAnnotations;
    this._valueDeserializer = paramSettableBeanProperty._valueDeserializer;
    this._valueTypeDeserializer = paramSettableBeanProperty._valueTypeDeserializer;
    this._nullProvider = paramSettableBeanProperty._nullProvider;
    this._managedReferenceName = paramSettableBeanProperty._managedReferenceName;
    this._propertyIndex = paramSettableBeanProperty._propertyIndex;
  }

  protected SettableBeanProperty(SettableBeanProperty paramSettableBeanProperty, JsonDeserializer<Object> paramJsonDeserializer)
  {
    this._propName = paramSettableBeanProperty._propName;
    this._type = paramSettableBeanProperty._type;
    this._contextAnnotations = paramSettableBeanProperty._contextAnnotations;
    this._valueTypeDeserializer = paramSettableBeanProperty._valueTypeDeserializer;
    this._managedReferenceName = paramSettableBeanProperty._managedReferenceName;
    this._propertyIndex = paramSettableBeanProperty._propertyIndex;
    this._valueDeserializer = paramJsonDeserializer;
    if (paramJsonDeserializer == null)
    {
      this._nullProvider = null;
      return;
    }
    Object localObject = paramJsonDeserializer.getNullValue();
    NullProvider localNullProvider = null;
    if (localObject == null);
    while (true)
    {
      this._nullProvider = localNullProvider;
      return;
      localNullProvider = new NullProvider(this._type, localObject);
    }
  }

  protected SettableBeanProperty(String paramString, JavaType paramJavaType, TypeDeserializer paramTypeDeserializer, Annotations paramAnnotations)
  {
    if ((paramString == null) || (paramString.length() == 0));
    for (this._propName = ""; ; this._propName = InternCache.instance.intern(paramString))
    {
      this._type = paramJavaType;
      this._contextAnnotations = paramAnnotations;
      this._valueTypeDeserializer = paramTypeDeserializer;
      return;
    }
  }

  protected IOException _throwAsIOE(Exception paramException)
    throws IOException
  {
    if ((paramException instanceof IOException))
      throw ((IOException)paramException);
    if ((paramException instanceof RuntimeException))
      throw ((RuntimeException)paramException);
    for (Object localObject = paramException; ((Throwable)localObject).getCause() != null; localObject = ((Throwable)localObject).getCause());
    throw new JsonMappingException(((Throwable)localObject).getMessage(), null, (Throwable)localObject);
  }

  protected void _throwAsIOE(Exception paramException, Object paramObject)
    throws IOException
  {
    if ((paramException instanceof IllegalArgumentException))
    {
      String str1;
      StringBuilder localStringBuilder;
      if (paramObject == null)
      {
        str1 = "[NULL]";
        localStringBuilder = new StringBuilder("Problem deserializing property '").append(getPropertyName());
        localStringBuilder.append("' (expected type: ").append(getType());
        localStringBuilder.append("; actual type: ").append(str1).append(")");
        String str2 = paramException.getMessage();
        if (str2 == null)
          break label117;
        localStringBuilder.append(", problem: ").append(str2);
      }
      while (true)
      {
        throw new JsonMappingException(localStringBuilder.toString(), null, paramException);
        str1 = paramObject.getClass().getName();
        break;
        label117: localStringBuilder.append(" (no error message provided)");
      }
    }
    _throwAsIOE(paramException);
  }

  public void assignIndex(int paramInt)
  {
    if (this._propertyIndex != -1)
      throw new IllegalStateException("Property '" + getName() + "' already had index (" + this._propertyIndex + "), trying to assign " + paramInt);
    this._propertyIndex = paramInt;
  }

  public final Object deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
    throws IOException, JsonProcessingException
  {
    if (paramJsonParser.getCurrentToken() == JsonToken.VALUE_NULL)
    {
      if (this._nullProvider == null)
        return null;
      return this._nullProvider.nullValue(paramDeserializationContext);
    }
    if (this._valueTypeDeserializer != null)
      return this._valueDeserializer.deserializeWithType(paramJsonParser, paramDeserializationContext, this._valueTypeDeserializer);
    return this._valueDeserializer.deserialize(paramJsonParser, paramDeserializationContext);
  }

  public abstract void deserializeAndSet(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, Object paramObject)
    throws IOException, JsonProcessingException;

  public abstract <A extends Annotation> A getAnnotation(Class<A> paramClass);

  public <A extends Annotation> A getContextAnnotation(Class<A> paramClass)
  {
    return this._contextAnnotations.get(paramClass);
  }

  protected final Class<?> getDeclaringClass()
  {
    return getMember().getDeclaringClass();
  }

  public Object getInjectableValueId()
  {
    return null;
  }

  public String getManagedReferenceName()
  {
    return this._managedReferenceName;
  }

  public abstract AnnotatedMember getMember();

  public final String getName()
  {
    return this._propName;
  }

  public int getPropertyIndex()
  {
    return this._propertyIndex;
  }

  @Deprecated
  public String getPropertyName()
  {
    return this._propName;
  }

  @Deprecated
  public int getProperytIndex()
  {
    return getPropertyIndex();
  }

  public JavaType getType()
  {
    return this._type;
  }

  public JsonDeserializer<Object> getValueDeserializer()
  {
    return this._valueDeserializer;
  }

  public TypeDeserializer getValueTypeDeserializer()
  {
    return this._valueTypeDeserializer;
  }

  public boolean hasValueDeserializer()
  {
    return this._valueDeserializer != null;
  }

  public boolean hasValueTypeDeserializer()
  {
    return this._valueTypeDeserializer != null;
  }

  public abstract void set(Object paramObject1, Object paramObject2)
    throws IOException;

  public void setManagedReferenceName(String paramString)
  {
    this._managedReferenceName = paramString;
  }

  @Deprecated
  public void setValueDeserializer(JsonDeserializer<Object> paramJsonDeserializer)
  {
    if (this._valueDeserializer != null)
      throw new IllegalStateException("Already had assigned deserializer for property '" + getName() + "' (class " + getDeclaringClass().getName() + ")");
    this._valueDeserializer = paramJsonDeserializer;
    Object localObject = this._valueDeserializer.getNullValue();
    if (localObject == null);
    for (NullProvider localNullProvider = null; ; localNullProvider = new NullProvider(this._type, localObject))
    {
      this._nullProvider = localNullProvider;
      return;
    }
  }

  public String toString()
  {
    return "[property '" + getName() + "']";
  }

  public abstract SettableBeanProperty withValueDeserializer(JsonDeserializer<Object> paramJsonDeserializer);

  public static final class FieldProperty extends SettableBeanProperty
  {
    protected final AnnotatedField _annotated;
    protected final Field _field;

    protected FieldProperty(FieldProperty paramFieldProperty, JsonDeserializer<Object> paramJsonDeserializer)
    {
      super(paramJsonDeserializer);
      this._annotated = paramFieldProperty._annotated;
      this._field = paramFieldProperty._field;
    }

    public FieldProperty(String paramString, JavaType paramJavaType, TypeDeserializer paramTypeDeserializer, Annotations paramAnnotations, AnnotatedField paramAnnotatedField)
    {
      super(paramJavaType, paramTypeDeserializer, paramAnnotations);
      this._annotated = paramAnnotatedField;
      this._field = paramAnnotatedField.getAnnotated();
    }

    public void deserializeAndSet(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, Object paramObject)
      throws IOException, JsonProcessingException
    {
      set(paramObject, deserialize(paramJsonParser, paramDeserializationContext));
    }

    public <A extends Annotation> A getAnnotation(Class<A> paramClass)
    {
      return this._annotated.getAnnotation(paramClass);
    }

    public AnnotatedMember getMember()
    {
      return this._annotated;
    }

    public final void set(Object paramObject1, Object paramObject2)
      throws IOException
    {
      try
      {
        this._field.set(paramObject1, paramObject2);
        return;
      }
      catch (Exception localException)
      {
        _throwAsIOE(localException, paramObject2);
      }
    }

    public FieldProperty withValueDeserializer(JsonDeserializer<Object> paramJsonDeserializer)
    {
      return new FieldProperty(this, paramJsonDeserializer);
    }
  }

  public static final class InnerClassProperty extends SettableBeanProperty
  {
    protected final Constructor<?> _creator;
    protected final SettableBeanProperty _delegate;

    protected InnerClassProperty(InnerClassProperty paramInnerClassProperty, JsonDeserializer<Object> paramJsonDeserializer)
    {
      super(paramJsonDeserializer);
      this._delegate = paramInnerClassProperty._delegate.withValueDeserializer(paramJsonDeserializer);
      this._creator = paramInnerClassProperty._creator;
    }

    public InnerClassProperty(SettableBeanProperty paramSettableBeanProperty, Constructor<?> paramConstructor)
    {
      super();
      this._delegate = paramSettableBeanProperty;
      this._creator = paramConstructor;
    }

    public void deserializeAndSet(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, Object paramObject)
      throws IOException, JsonProcessingException
    {
      Object localObject1;
      if (paramJsonParser.getCurrentToken() == JsonToken.VALUE_NULL)
        if (this._nullProvider == null)
          localObject1 = null;
      while (true)
      {
        set(paramObject, localObject1);
        return;
        localObject1 = this._nullProvider.nullValue(paramDeserializationContext);
        continue;
        if (this._valueTypeDeserializer != null)
        {
          localObject1 = this._valueDeserializer.deserializeWithType(paramJsonParser, paramDeserializationContext, this._valueTypeDeserializer);
          continue;
        }
        try
        {
          Object localObject2 = this._creator.newInstance(new Object[] { paramObject });
          localObject1 = localObject2;
          this._valueDeserializer.deserialize(paramJsonParser, paramDeserializationContext, localObject1);
        }
        catch (Exception localException)
        {
          while (true)
          {
            ClassUtil.unwrapAndThrowAsIAE(localException, "Failed to instantiate class " + this._creator.getDeclaringClass().getName() + ", problem: " + localException.getMessage());
            localObject1 = null;
          }
        }
      }
    }

    public <A extends Annotation> A getAnnotation(Class<A> paramClass)
    {
      return this._delegate.getAnnotation(paramClass);
    }

    public AnnotatedMember getMember()
    {
      return this._delegate.getMember();
    }

    public final void set(Object paramObject1, Object paramObject2)
      throws IOException
    {
      this._delegate.set(paramObject1, paramObject2);
    }

    public InnerClassProperty withValueDeserializer(JsonDeserializer<Object> paramJsonDeserializer)
    {
      return new InnerClassProperty(this, paramJsonDeserializer);
    }
  }

  public static final class ManagedReferenceProperty extends SettableBeanProperty
  {
    protected final SettableBeanProperty _backProperty;
    protected final boolean _isContainer;
    protected final SettableBeanProperty _managedProperty;
    protected final String _referenceName;

    protected ManagedReferenceProperty(ManagedReferenceProperty paramManagedReferenceProperty, JsonDeserializer<Object> paramJsonDeserializer)
    {
      super(paramJsonDeserializer);
      this._referenceName = paramManagedReferenceProperty._referenceName;
      this._isContainer = paramManagedReferenceProperty._isContainer;
      this._managedProperty = paramManagedReferenceProperty._managedProperty;
      this._backProperty = paramManagedReferenceProperty._backProperty;
    }

    public ManagedReferenceProperty(String paramString, SettableBeanProperty paramSettableBeanProperty1, SettableBeanProperty paramSettableBeanProperty2, Annotations paramAnnotations, boolean paramBoolean)
    {
      super(paramSettableBeanProperty1.getType(), paramSettableBeanProperty1._valueTypeDeserializer, paramAnnotations);
      this._referenceName = paramString;
      this._managedProperty = paramSettableBeanProperty1;
      this._backProperty = paramSettableBeanProperty2;
      this._isContainer = paramBoolean;
    }

    public void deserializeAndSet(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, Object paramObject)
      throws IOException, JsonProcessingException
    {
      set(paramObject, this._managedProperty.deserialize(paramJsonParser, paramDeserializationContext));
    }

    public <A extends Annotation> A getAnnotation(Class<A> paramClass)
    {
      return this._managedProperty.getAnnotation(paramClass);
    }

    public AnnotatedMember getMember()
    {
      return this._managedProperty.getMember();
    }

    public final void set(Object paramObject1, Object paramObject2)
      throws IOException
    {
      this._managedProperty.set(paramObject1, paramObject2);
      if (paramObject2 != null)
      {
        if (this._isContainer)
        {
          if ((paramObject2 instanceof Object[]))
            for (Object localObject3 : (Object[])paramObject2)
              if (localObject3 != null)
                this._backProperty.set(localObject3, paramObject1);
          if ((paramObject2 instanceof Collection))
          {
            Iterator localIterator2 = ((Collection)paramObject2).iterator();
            while (localIterator2.hasNext())
            {
              Object localObject2 = localIterator2.next();
              if (localObject2 != null)
                this._backProperty.set(localObject2, paramObject1);
            }
          }
          if ((paramObject2 instanceof Map))
          {
            Iterator localIterator1 = ((Map)paramObject2).values().iterator();
            while (localIterator1.hasNext())
            {
              Object localObject1 = localIterator1.next();
              if (localObject1 != null)
                this._backProperty.set(localObject1, paramObject1);
            }
          }
          throw new IllegalStateException("Unsupported container type (" + paramObject2.getClass().getName() + ") when resolving reference '" + this._referenceName + "'");
        }
        this._backProperty.set(paramObject2, paramObject1);
      }
    }

    public ManagedReferenceProperty withValueDeserializer(JsonDeserializer<Object> paramJsonDeserializer)
    {
      return new ManagedReferenceProperty(this, paramJsonDeserializer);
    }
  }

  public static final class MethodProperty extends SettableBeanProperty
  {
    protected final AnnotatedMethod _annotated;
    protected final Method _setter;

    protected MethodProperty(MethodProperty paramMethodProperty, JsonDeserializer<Object> paramJsonDeserializer)
    {
      super(paramJsonDeserializer);
      this._annotated = paramMethodProperty._annotated;
      this._setter = paramMethodProperty._setter;
    }

    public MethodProperty(String paramString, JavaType paramJavaType, TypeDeserializer paramTypeDeserializer, Annotations paramAnnotations, AnnotatedMethod paramAnnotatedMethod)
    {
      super(paramJavaType, paramTypeDeserializer, paramAnnotations);
      this._annotated = paramAnnotatedMethod;
      this._setter = paramAnnotatedMethod.getAnnotated();
    }

    public void deserializeAndSet(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, Object paramObject)
      throws IOException, JsonProcessingException
    {
      set(paramObject, deserialize(paramJsonParser, paramDeserializationContext));
    }

    public <A extends Annotation> A getAnnotation(Class<A> paramClass)
    {
      return this._annotated.getAnnotation(paramClass);
    }

    public AnnotatedMember getMember()
    {
      return this._annotated;
    }

    public final void set(Object paramObject1, Object paramObject2)
      throws IOException
    {
      try
      {
        this._setter.invoke(paramObject1, new Object[] { paramObject2 });
        return;
      }
      catch (Exception localException)
      {
        _throwAsIOE(localException, paramObject2);
      }
    }

    public MethodProperty withValueDeserializer(JsonDeserializer<Object> paramJsonDeserializer)
    {
      return new MethodProperty(this, paramJsonDeserializer);
    }
  }

  protected static final class NullProvider
  {
    private final boolean _isPrimitive;
    private final Object _nullValue;
    private final Class<?> _rawType;

    protected NullProvider(JavaType paramJavaType, Object paramObject)
    {
      this._nullValue = paramObject;
      this._isPrimitive = paramJavaType.isPrimitive();
      this._rawType = paramJavaType.getRawClass();
    }

    public Object nullValue(DeserializationContext paramDeserializationContext)
      throws JsonProcessingException
    {
      if ((this._isPrimitive) && (paramDeserializationContext.isEnabled(DeserializationConfig.Feature.FAIL_ON_NULL_FOR_PRIMITIVES)))
        throw paramDeserializationContext.mappingException("Can not map JSON null into type " + this._rawType.getName() + " (set DeserializationConfig.Feature.FAIL_ON_NULL_FOR_PRIMITIVES to 'false' to allow)");
      return this._nullValue;
    }
  }

  public static final class SetterlessProperty extends SettableBeanProperty
  {
    protected final AnnotatedMethod _annotated;
    protected final Method _getter;

    protected SetterlessProperty(SetterlessProperty paramSetterlessProperty, JsonDeserializer<Object> paramJsonDeserializer)
    {
      super(paramJsonDeserializer);
      this._annotated = paramSetterlessProperty._annotated;
      this._getter = paramSetterlessProperty._getter;
    }

    public SetterlessProperty(String paramString, JavaType paramJavaType, TypeDeserializer paramTypeDeserializer, Annotations paramAnnotations, AnnotatedMethod paramAnnotatedMethod)
    {
      super(paramJavaType, paramTypeDeserializer, paramAnnotations);
      this._annotated = paramAnnotatedMethod;
      this._getter = paramAnnotatedMethod.getAnnotated();
    }

    public final void deserializeAndSet(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, Object paramObject)
      throws IOException, JsonProcessingException
    {
      if (paramJsonParser.getCurrentToken() == JsonToken.VALUE_NULL)
        return;
      Object localObject;
      try
      {
        localObject = this._getter.invoke(paramObject, new Object[0]);
        if (localObject == null)
          throw new JsonMappingException("Problem deserializing 'setterless' property '" + getName() + "': get method returned null");
      }
      catch (Exception localException)
      {
        _throwAsIOE(localException);
        return;
      }
      this._valueDeserializer.deserialize(paramJsonParser, paramDeserializationContext, localObject);
    }

    public <A extends Annotation> A getAnnotation(Class<A> paramClass)
    {
      return this._annotated.getAnnotation(paramClass);
    }

    public AnnotatedMember getMember()
    {
      return this._annotated;
    }

    public final void set(Object paramObject1, Object paramObject2)
      throws IOException
    {
      throw new UnsupportedOperationException("Should never call 'set' on setterless property");
    }

    public SetterlessProperty withValueDeserializer(JsonDeserializer<Object> paramJsonDeserializer)
    {
      return new SetterlessProperty(this, paramJsonDeserializer);
    }
  }
}

/* Location:           /Users/dantheman/src/android/decompiled/vine-decompiled/dex2jar/classes-dex2jar.jar
 * Qualified Name:     com.flurry.org.codehaus.jackson.map.deser.SettableBeanProperty
 * JD-Core Version:    0.6.2
 */
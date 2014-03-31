package com.flurry.org.codehaus.jackson.map;

import com.flurry.org.codehaus.jackson.io.SerializedString;
import com.flurry.org.codehaus.jackson.map.deser.BeanDeserializerModifier;
import com.flurry.org.codehaus.jackson.map.deser.ValueInstantiators;
import com.flurry.org.codehaus.jackson.type.JavaType;

public abstract class DeserializerProvider
{
  public abstract int cachedDeserializersCount();

  public abstract SerializedString findExpectedRootName(DeserializationConfig paramDeserializationConfig, JavaType paramJavaType)
    throws JsonMappingException;

  public abstract KeyDeserializer findKeyDeserializer(DeserializationConfig paramDeserializationConfig, JavaType paramJavaType, BeanProperty paramBeanProperty)
    throws JsonMappingException;

  public abstract JsonDeserializer<Object> findTypedValueDeserializer(DeserializationConfig paramDeserializationConfig, JavaType paramJavaType, BeanProperty paramBeanProperty)
    throws JsonMappingException;

  public abstract JsonDeserializer<Object> findValueDeserializer(DeserializationConfig paramDeserializationConfig, JavaType paramJavaType, BeanProperty paramBeanProperty)
    throws JsonMappingException;

  public abstract void flushCachedDeserializers();

  public abstract boolean hasValueDeserializerFor(DeserializationConfig paramDeserializationConfig, JavaType paramJavaType);

  public abstract JavaType mapAbstractType(DeserializationConfig paramDeserializationConfig, JavaType paramJavaType)
    throws JsonMappingException;

  public abstract DeserializerProvider withAbstractTypeResolver(AbstractTypeResolver paramAbstractTypeResolver);

  public abstract DeserializerProvider withAdditionalDeserializers(Deserializers paramDeserializers);

  public abstract DeserializerProvider withAdditionalKeyDeserializers(KeyDeserializers paramKeyDeserializers);

  public abstract DeserializerProvider withDeserializerModifier(BeanDeserializerModifier paramBeanDeserializerModifier);

  public abstract DeserializerProvider withFactory(DeserializerFactory paramDeserializerFactory);

  public abstract DeserializerProvider withValueInstantiators(ValueInstantiators paramValueInstantiators);
}

/* Location:           /Users/dantheman/src/android/decompiled/vine-decompiled/dex2jar/classes-dex2jar.jar
 * Qualified Name:     com.flurry.org.codehaus.jackson.map.DeserializerProvider
 * JD-Core Version:    0.6.2
 */
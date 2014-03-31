package com.fasterxml.jackson.core;

import com.fasterxml.jackson.core.io.CharacterEscapes;
import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
import java.io.InputStream;
import java.math.BigDecimal;
import java.math.BigInteger;

public abstract class JsonGenerator
  implements Closeable, Flushable, Versioned
{
  protected PrettyPrinter _cfgPrettyPrinter;

  public boolean canUseSchema(FormatSchema paramFormatSchema)
  {
    return false;
  }

  public abstract void close()
    throws IOException;

  public final JsonGenerator configure(Feature paramFeature, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      enable(paramFeature);
      return this;
    }
    disable(paramFeature);
    return this;
  }

  public abstract void copyCurrentEvent(JsonParser paramJsonParser)
    throws IOException, JsonProcessingException;

  public abstract void copyCurrentStructure(JsonParser paramJsonParser)
    throws IOException, JsonProcessingException;

  public abstract JsonGenerator disable(Feature paramFeature);

  public abstract JsonGenerator enable(Feature paramFeature);

  public abstract void flush()
    throws IOException;

  public CharacterEscapes getCharacterEscapes()
  {
    return null;
  }

  public abstract ObjectCodec getCodec();

  public int getHighestEscapedChar()
  {
    return 0;
  }

  public abstract JsonStreamContext getOutputContext();

  public Object getOutputTarget()
  {
    return null;
  }

  public PrettyPrinter getPrettyPrinter()
  {
    return this._cfgPrettyPrinter;
  }

  public FormatSchema getSchema()
  {
    return null;
  }

  public abstract boolean isClosed();

  public abstract boolean isEnabled(Feature paramFeature);

  public JsonGenerator setCharacterEscapes(CharacterEscapes paramCharacterEscapes)
  {
    return this;
  }

  public abstract JsonGenerator setCodec(ObjectCodec paramObjectCodec);

  public JsonGenerator setHighestNonEscapedChar(int paramInt)
  {
    return this;
  }

  public JsonGenerator setPrettyPrinter(PrettyPrinter paramPrettyPrinter)
  {
    this._cfgPrettyPrinter = paramPrettyPrinter;
    return this;
  }

  public JsonGenerator setRootValueSeparator(SerializableString paramSerializableString)
  {
    throw new UnsupportedOperationException();
  }

  public void setSchema(FormatSchema paramFormatSchema)
  {
    throw new UnsupportedOperationException("Generator of type " + getClass().getName() + " does not support schema of type '" + paramFormatSchema.getSchemaType() + "'");
  }

  public abstract JsonGenerator useDefaultPrettyPrinter();

  public abstract Version version();

  public final void writeArrayFieldStart(String paramString)
    throws IOException, JsonGenerationException
  {
    writeFieldName(paramString);
    writeStartArray();
  }

  public abstract int writeBinary(Base64Variant paramBase64Variant, InputStream paramInputStream, int paramInt)
    throws IOException, JsonGenerationException;

  public int writeBinary(InputStream paramInputStream, int paramInt)
    throws IOException, JsonGenerationException
  {
    return writeBinary(Base64Variants.getDefaultVariant(), paramInputStream, paramInt);
  }

  public abstract void writeBinary(Base64Variant paramBase64Variant, byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws IOException, JsonGenerationException;

  public void writeBinary(byte[] paramArrayOfByte)
    throws IOException, JsonGenerationException
  {
    writeBinary(Base64Variants.getDefaultVariant(), paramArrayOfByte, 0, paramArrayOfByte.length);
  }

  public void writeBinary(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws IOException, JsonGenerationException
  {
    writeBinary(Base64Variants.getDefaultVariant(), paramArrayOfByte, paramInt1, paramInt2);
  }

  public final void writeBinaryField(String paramString, byte[] paramArrayOfByte)
    throws IOException, JsonGenerationException
  {
    writeFieldName(paramString);
    writeBinary(paramArrayOfByte);
  }

  public abstract void writeBoolean(boolean paramBoolean)
    throws IOException, JsonGenerationException;

  public final void writeBooleanField(String paramString, boolean paramBoolean)
    throws IOException, JsonGenerationException
  {
    writeFieldName(paramString);
    writeBoolean(paramBoolean);
  }

  public abstract void writeEndArray()
    throws IOException, JsonGenerationException;

  public abstract void writeEndObject()
    throws IOException, JsonGenerationException;

  public abstract void writeFieldName(SerializableString paramSerializableString)
    throws IOException, JsonGenerationException;

  public abstract void writeFieldName(String paramString)
    throws IOException, JsonGenerationException;

  public abstract void writeNull()
    throws IOException, JsonGenerationException;

  public final void writeNullField(String paramString)
    throws IOException, JsonGenerationException
  {
    writeFieldName(paramString);
    writeNull();
  }

  public abstract void writeNumber(double paramDouble)
    throws IOException, JsonGenerationException;

  public abstract void writeNumber(float paramFloat)
    throws IOException, JsonGenerationException;

  public abstract void writeNumber(int paramInt)
    throws IOException, JsonGenerationException;

  public abstract void writeNumber(long paramLong)
    throws IOException, JsonGenerationException;

  public abstract void writeNumber(String paramString)
    throws IOException, JsonGenerationException, UnsupportedOperationException;

  public abstract void writeNumber(BigDecimal paramBigDecimal)
    throws IOException, JsonGenerationException;

  public abstract void writeNumber(BigInteger paramBigInteger)
    throws IOException, JsonGenerationException;

  public void writeNumber(short paramShort)
    throws IOException, JsonGenerationException
  {
    writeNumber(paramShort);
  }

  public final void writeNumberField(String paramString, double paramDouble)
    throws IOException, JsonGenerationException
  {
    writeFieldName(paramString);
    writeNumber(paramDouble);
  }

  public final void writeNumberField(String paramString, float paramFloat)
    throws IOException, JsonGenerationException
  {
    writeFieldName(paramString);
    writeNumber(paramFloat);
  }

  public final void writeNumberField(String paramString, int paramInt)
    throws IOException, JsonGenerationException
  {
    writeFieldName(paramString);
    writeNumber(paramInt);
  }

  public final void writeNumberField(String paramString, long paramLong)
    throws IOException, JsonGenerationException
  {
    writeFieldName(paramString);
    writeNumber(paramLong);
  }

  public final void writeNumberField(String paramString, BigDecimal paramBigDecimal)
    throws IOException, JsonGenerationException
  {
    writeFieldName(paramString);
    writeNumber(paramBigDecimal);
  }

  public abstract void writeObject(Object paramObject)
    throws IOException, JsonProcessingException;

  public final void writeObjectField(String paramString, Object paramObject)
    throws IOException, JsonProcessingException
  {
    writeFieldName(paramString);
    writeObject(paramObject);
  }

  public final void writeObjectFieldStart(String paramString)
    throws IOException, JsonGenerationException
  {
    writeFieldName(paramString);
    writeStartObject();
  }

  public abstract void writeRaw(char paramChar)
    throws IOException, JsonGenerationException;

  public void writeRaw(SerializableString paramSerializableString)
    throws IOException, JsonGenerationException
  {
    writeRaw(paramSerializableString.getValue());
  }

  public abstract void writeRaw(String paramString)
    throws IOException, JsonGenerationException;

  public abstract void writeRaw(String paramString, int paramInt1, int paramInt2)
    throws IOException, JsonGenerationException;

  public abstract void writeRaw(char[] paramArrayOfChar, int paramInt1, int paramInt2)
    throws IOException, JsonGenerationException;

  public abstract void writeRawUTF8String(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws IOException, JsonGenerationException;

  public abstract void writeRawValue(String paramString)
    throws IOException, JsonGenerationException;

  public abstract void writeRawValue(String paramString, int paramInt1, int paramInt2)
    throws IOException, JsonGenerationException;

  public abstract void writeRawValue(char[] paramArrayOfChar, int paramInt1, int paramInt2)
    throws IOException, JsonGenerationException;

  public abstract void writeStartArray()
    throws IOException, JsonGenerationException;

  public abstract void writeStartObject()
    throws IOException, JsonGenerationException;

  public abstract void writeString(SerializableString paramSerializableString)
    throws IOException, JsonGenerationException;

  public abstract void writeString(String paramString)
    throws IOException, JsonGenerationException;

  public abstract void writeString(char[] paramArrayOfChar, int paramInt1, int paramInt2)
    throws IOException, JsonGenerationException;

  public void writeStringField(String paramString1, String paramString2)
    throws IOException, JsonGenerationException
  {
    writeFieldName(paramString1);
    writeString(paramString2);
  }

  public abstract void writeTree(TreeNode paramTreeNode)
    throws IOException, JsonProcessingException;

  public abstract void writeUTF8String(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws IOException, JsonGenerationException;

  public static enum Feature
  {
    private final boolean _defaultState;
    private final int _mask = 1 << ordinal();

    static
    {
      AUTO_CLOSE_JSON_CONTENT = new Feature("AUTO_CLOSE_JSON_CONTENT", 1, true);
      QUOTE_FIELD_NAMES = new Feature("QUOTE_FIELD_NAMES", 2, true);
      QUOTE_NON_NUMERIC_NUMBERS = new Feature("QUOTE_NON_NUMERIC_NUMBERS", 3, true);
      WRITE_NUMBERS_AS_STRINGS = new Feature("WRITE_NUMBERS_AS_STRINGS", 4, false);
      FLUSH_PASSED_TO_STREAM = new Feature("FLUSH_PASSED_TO_STREAM", 5, true);
      ESCAPE_NON_ASCII = new Feature("ESCAPE_NON_ASCII", 6, false);
      Feature[] arrayOfFeature = new Feature[7];
      arrayOfFeature[0] = AUTO_CLOSE_TARGET;
      arrayOfFeature[1] = AUTO_CLOSE_JSON_CONTENT;
      arrayOfFeature[2] = QUOTE_FIELD_NAMES;
      arrayOfFeature[3] = QUOTE_NON_NUMERIC_NUMBERS;
      arrayOfFeature[4] = WRITE_NUMBERS_AS_STRINGS;
      arrayOfFeature[5] = FLUSH_PASSED_TO_STREAM;
      arrayOfFeature[6] = ESCAPE_NON_ASCII;
    }

    private Feature(boolean paramBoolean)
    {
      this._defaultState = paramBoolean;
    }

    public static int collectDefaults()
    {
      int i = 0;
      for (Feature localFeature : values())
        if (localFeature.enabledByDefault())
          i |= localFeature.getMask();
      return i;
    }

    public boolean enabledByDefault()
    {
      return this._defaultState;
    }

    public int getMask()
    {
      return this._mask;
    }
  }
}

/* Location:           /Users/dantheman/src/android/decompiled/vine-decompiled/dex2jar/classes-dex2jar.jar
 * Qualified Name:     com.fasterxml.jackson.core.JsonGenerator
 * JD-Core Version:    0.6.2
 */
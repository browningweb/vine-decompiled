package com.flurry.android;

import java.nio.ByteBuffer;
import java.security.MessageDigest;
import java.util.zip.CRC32;

public class CrcMessageDigest extends MessageDigest
{
  private CRC32 crc = new CRC32();

  public CrcMessageDigest()
  {
    super("CRC");
  }

  protected byte[] engineDigest()
  {
    long l = this.crc.getValue();
    byte[] arrayOfByte = new byte[4];
    arrayOfByte[0] = ((byte)(int)((0xFF000000 & l) >> 24));
    arrayOfByte[1] = ((byte)(int)((0xFF0000 & l) >> 16));
    arrayOfByte[2] = ((byte)(int)((0xFF00 & l) >> 8));
    arrayOfByte[3] = ((byte)(int)(l & 0xFF));
    return arrayOfByte;
  }

  protected void engineReset()
  {
    this.crc.reset();
  }

  protected void engineUpdate(byte paramByte)
  {
    this.crc.update(paramByte);
  }

  protected void engineUpdate(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    this.crc.update(paramArrayOfByte, paramInt1, paramInt2);
  }

  public int getChecksum()
  {
    return ByteBuffer.wrap(engineDigest()).getInt();
  }

  public byte[] getDigest()
  {
    return engineDigest();
  }
}

/* Location:           /Users/dantheman/src/android/decompiled/vine-decompiled/dex2jar/classes-dex2jar.jar
 * Qualified Name:     com.flurry.android.CrcMessageDigest
 * JD-Core Version:    0.6.2
 */
package com.ardor3d.util.export;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public abstract class ByteUtils {
    public static boolean convertBooleanFromBytes(byte[] bArr) {
        return convertBooleanFromBytes(bArr, 0);
    }

    public static double convertDoubleFromBytes(byte[] bArr) {
        return convertDoubleFromBytes(bArr, 0);
    }

    public static float convertFloatFromBytes(byte[] bArr) {
        return convertFloatFromBytes(bArr, 0);
    }

    public static int convertIntFromBytes(byte[] bArr) {
        return convertIntFromBytes(bArr, 0);
    }

    public static long convertLongFromBytes(byte[] bArr) {
        return convertLongFromBytes(bArr, 0);
    }

    public static short convertShortFromBytes(byte[] bArr) {
        return convertShortFromBytes(bArr, 0);
    }

    public static byte[] convertToBytes(short s10) {
        return new byte[]{(byte) (s10 >> 8), (byte) s10};
    }

    public static byte[] getByteContent(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(16384);
        byte[] bArr = new byte[1024];
        while (true) {
            int read = inputStream.read(bArr);
            if (read <= 0) {
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                byteArrayOutputStream.close();
                return byteArray;
            }
            byteArrayOutputStream.write(bArr, 0, read);
        }
    }

    public static boolean readBoolean(InputStream inputStream) throws IOException {
        byte[] bArr = new byte[1];
        inputStream.read(bArr);
        return convertBooleanFromBytes(bArr);
    }

    public static double readDouble(InputStream inputStream) throws IOException {
        byte[] bArr = new byte[8];
        inputStream.read(bArr);
        return convertDoubleFromBytes(bArr);
    }

    public static float readFloat(InputStream inputStream) throws IOException {
        byte[] bArr = new byte[4];
        inputStream.read(bArr);
        return convertFloatFromBytes(bArr);
    }

    public static int readInt(InputStream inputStream) throws IOException {
        byte[] bArr = new byte[4];
        inputStream.read(bArr);
        return convertIntFromBytes(bArr);
    }

    public static long readLong(InputStream inputStream) throws IOException {
        byte[] bArr = new byte[8];
        inputStream.read(bArr);
        return convertLongFromBytes(bArr);
    }

    public static short readShort(InputStream inputStream) throws IOException {
        byte[] bArr = new byte[2];
        inputStream.read(bArr);
        return convertShortFromBytes(bArr);
    }

    public static byte[] rightAlignBytes(byte[] bArr, int i10) {
        if (bArr.length == i10) {
            return bArr;
        }
        byte[] bArr2 = new byte[i10];
        for (int length = i10 - bArr.length; length < i10; length++) {
            bArr2[length] = bArr[length - (i10 - bArr.length)];
        }
        return bArr2;
    }

    public static void writeBoolean(OutputStream outputStream, boolean z10) throws IOException {
        outputStream.write(convertToBytes(z10));
    }

    public static void writeDouble(OutputStream outputStream, double d10) throws IOException {
        outputStream.write(convertToBytes(d10));
    }

    public static void writeFloat(OutputStream outputStream, float f10) throws IOException {
        outputStream.write(convertToBytes(f10));
    }

    public static void writeInt(OutputStream outputStream, int i10) throws IOException {
        outputStream.write(convertToBytes(i10));
    }

    public static void writeLong(OutputStream outputStream, long j10) throws IOException {
        outputStream.write(convertToBytes(j10));
    }

    public static void writeShort(OutputStream outputStream, short s10) throws IOException {
        outputStream.write(convertToBytes(s10));
    }

    public static boolean convertBooleanFromBytes(byte[] bArr, int i10) {
        return bArr[i10] != 0;
    }

    public static double convertDoubleFromBytes(byte[] bArr, int i10) {
        return Double.longBitsToDouble(convertLongFromBytes(bArr, i10));
    }

    public static float convertFloatFromBytes(byte[] bArr, int i10) {
        return Float.intBitsToFloat(convertIntFromBytes(bArr, i10));
    }

    public static int convertIntFromBytes(byte[] bArr, int i10) {
        return ((bArr[i10] & 255) << 24) + ((bArr[i10 + 1] & 255) << 16) + ((bArr[i10 + 2] & 255) << 8) + (bArr[i10 + 3] & 255);
    }

    public static long convertLongFromBytes(byte[] bArr, int i10) {
        return (bArr[i10 + 7] & 255) + ((bArr[i10 + 6] & 255) << 8) + ((bArr[i10 + 5] & 255) << 16) + ((bArr[i10 + 4] & 255) << 24) + ((bArr[i10 + 3] & 255) << 32) + ((bArr[i10 + 2] & 255) << 40) + ((bArr[i10 + 1] & 255) << 48) + ((bArr[i10] & 255) << 56);
    }

    public static short convertShortFromBytes(byte[] bArr, int i10) {
        return (short) ((bArr[i10 + 1] & 255) + ((bArr[i10] & 255) << 8));
    }

    public static byte[] convertToBytes(int i10) {
        return new byte[]{(byte) (i10 >> 24), (byte) (i10 >> 16), (byte) (i10 >> 8), (byte) i10};
    }

    public static byte[] convertToBytes(long j10) {
        return new byte[]{(byte) (j10 >>> 56), (byte) (j10 >>> 48), (byte) (j10 >>> 40), (byte) (j10 >>> 32), (byte) (j10 >>> 24), (byte) (j10 >>> 16), (byte) (j10 >>> 8), (byte) j10};
    }

    public static byte[] convertToBytes(double d10) {
        return convertToBytes(Double.doubleToLongBits(d10));
    }

    public static byte[] convertToBytes(float f10) {
        return convertToBytes(Float.floatToIntBits(f10));
    }

    public static byte[] convertToBytes(boolean z10) {
        return new byte[]{z10 ? (byte) 1 : (byte) 0};
    }
}

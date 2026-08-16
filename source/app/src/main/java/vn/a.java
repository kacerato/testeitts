package vn;

import java.nio.ByteOrder;

public class a {
    public static int a(byte[] data, int position, ByteOrder order) {
        return order == ByteOrder.BIG_ENDIAN ? b(data, position) : c(data, position);
    }

    public static int b(byte[] data, int position) {
        return (data[position + 3] & 255) | ((data[position] & 255) << 24) | ((data[position + 1] & 255) << 16) | ((data[position + 2] & 255) << 8);
    }

    public static int c(byte[] data, int position) {
        return (data[position] & 255) | ((data[position + 3] & 255) << 24) | ((data[position + 2] & 255) << 16) | ((data[position + 1] & 255) << 8);
    }

    public static int d(byte[] data, int position, ByteOrder order) {
        return order == ByteOrder.BIG_ENDIAN ? e(data, position) : f(data, position);
    }

    public static int e(byte[] data, int position) {
        return (data[position + 1] & 255) | ((data[position] & 255) << 8);
    }

    public static int f(byte[] data, int position) {
        return (data[position] & 255) | ((data[position + 1] & 255) << 8);
    }

    public static int g(int value, byte[] data, int position, ByteOrder order) {
        if (order == ByteOrder.BIG_ENDIAN) {
            data[position] = (byte) (value >>> 24);
            data[position + 1] = (byte) (value >>> 16);
            data[position + 2] = (byte) (value >>> 8);
            data[position + 3] = (byte) (value & 255);
        } else {
            data[position] = (byte) (value & 255);
            data[position + 1] = (byte) (value >>> 8);
            data[position + 2] = (byte) (value >>> 16);
            data[position + 3] = (byte) (value >>> 24);
        }
        return position + 4;
    }

    public static int h(int value, byte[] data, int position, ByteOrder order) {
        if (order == ByteOrder.BIG_ENDIAN) {
            data[position] = (byte) (value >>> 8);
            data[position + 1] = (byte) (value & 255);
        } else {
            data[position] = (byte) (value & 255);
            data[position + 1] = (byte) (value >>> 8);
        }
        return position + 2;
    }
}

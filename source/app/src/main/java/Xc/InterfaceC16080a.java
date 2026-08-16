package xc;

public interface InterfaceC16080a {
    int capacity();

    byte getAsByte(int index);

    double getAsDouble(int index);

    float getAsFloat(int index);

    int getAsInt(int index);

    short getAsShort(int index);

    void setAsByte(int index, byte value);

    void setAsDouble(int index, double value);

    void setAsFloat(int index, float value);

    void setAsInt(int index, int value);

    void setAsShort(int index, short value);

    default void setNormalizeOGL(boolean value) {
        throw new RuntimeException("Unsupported");
    }
}

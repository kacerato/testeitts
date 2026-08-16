package com.google.protobuf;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

@B
public interface InterfaceC12659b1 extends InterfaceC12663c1 {

    public interface a extends InterfaceC12663c1, Cloneable {
        InterfaceC12659b1 build();

        InterfaceC12659b1 buildPartial();

        @A
        a clear();

        a m1247clone();

        boolean mergeDelimitedFrom(InputStream input) throws IOException;

        boolean mergeDelimitedFrom(InputStream input, C12666d0 extensionRegistry) throws IOException;

        @A
        a mergeFrom(C input) throws IOException;

        @A
        a mergeFrom(C input, C12666d0 extensionRegistry) throws IOException;

        @A
        a mergeFrom(InterfaceC12659b1 other);

        @A
        a mergeFrom(AbstractC12724x data) throws InvalidProtocolBufferException;

        @A
        a mergeFrom(AbstractC12724x data, C12666d0 extensionRegistry) throws InvalidProtocolBufferException;

        @A
        a mergeFrom(InputStream input) throws IOException;

        @A
        a mergeFrom(InputStream input, C12666d0 extensionRegistry) throws IOException;

        @A
        a mergeFrom(byte[] data) throws InvalidProtocolBufferException;

        @A
        a mergeFrom(byte[] data, int off, int len) throws InvalidProtocolBufferException;

        @A
        a mergeFrom(byte[] data, int off, int len, C12666d0 extensionRegistry) throws InvalidProtocolBufferException;

        @A
        a mergeFrom(byte[] data, C12666d0 extensionRegistry) throws InvalidProtocolBufferException;
    }

    InterfaceC12723w1<? extends InterfaceC12659b1> getParserForType();

    int getSerializedSize();

    a newBuilderForType();

    a toBuilder();

    byte[] toByteArray();

    AbstractC12724x toByteString();

    void writeDelimitedTo(OutputStream output) throws IOException;

    void writeTo(CodedOutputStream output) throws IOException;

    void writeTo(OutputStream output) throws IOException;
}

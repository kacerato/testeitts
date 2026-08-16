package com.google.protobuf;

import com.google.protobuf.Descriptors;
import com.google.protobuf.InterfaceC12659b1;
import java.io.IOException;
import java.io.InputStream;

@B
public interface Y0 extends InterfaceC12659b1, InterfaceC12670e1 {

    public interface a extends InterfaceC12659b1.a, InterfaceC12670e1 {
        @A
        a addRepeatedField(Descriptors.f field, Object value);

        Y0 build();

        Y0 buildPartial();

        @A
        a clear();

        @A
        a clearField(Descriptors.f field);

        @A
        a clearOneof(Descriptors.k oneof);

        a m1247clone();

        @Override
        Descriptors.b getDescriptorForType();

        a getFieldBuilder(Descriptors.f field);

        a getRepeatedFieldBuilder(Descriptors.f field, int index);

        @Override
        boolean mergeDelimitedFrom(InputStream input) throws IOException;

        @Override
        boolean mergeDelimitedFrom(InputStream input, C12666d0 extensionRegistry) throws IOException;

        @Override
        @A
        a mergeFrom(C input) throws IOException;

        @A
        a mergeFrom(C input, C12666d0 extensionRegistry) throws IOException;

        @A
        a mergeFrom(Y0 other);

        @Override
        @A
        a mergeFrom(AbstractC12724x data) throws InvalidProtocolBufferException;

        @Override
        @A
        a mergeFrom(AbstractC12724x data, C12666d0 extensionRegistry) throws InvalidProtocolBufferException;

        @Override
        @A
        a mergeFrom(InputStream input) throws IOException;

        @Override
        @A
        a mergeFrom(InputStream input, C12666d0 extensionRegistry) throws IOException;

        @Override
        @A
        a mergeFrom(byte[] data) throws InvalidProtocolBufferException;

        @Override
        @A
        a mergeFrom(byte[] data, int off, int len) throws InvalidProtocolBufferException;

        @Override
        @A
        a mergeFrom(byte[] data, int off, int len, C12666d0 extensionRegistry) throws InvalidProtocolBufferException;

        @Override
        @A
        a mergeFrom(byte[] data, C12666d0 extensionRegistry) throws InvalidProtocolBufferException;

        @A
        a mergeUnknownFields(r2 unknownFields);

        a newBuilderForField(Descriptors.f field);

        @A
        a setField(Descriptors.f field, Object value);

        @A
        a setRepeatedField(Descriptors.f field, int index, Object value);

        @A
        a setUnknownFields(r2 unknownFields);
    }

    boolean equals(Object other);

    InterfaceC12723w1<? extends Y0> getParserForType();

    int hashCode();

    a newBuilderForType();

    a toBuilder();

    String toString();
}

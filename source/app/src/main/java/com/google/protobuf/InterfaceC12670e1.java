package com.google.protobuf;

import com.google.protobuf.Descriptors;
import java.util.List;
import java.util.Map;

@B
public interface InterfaceC12670e1 extends InterfaceC12663c1 {
    List<String> findInitializationErrors();

    Map<Descriptors.f, Object> getAllFields();

    Y0 getDefaultInstanceForType();

    Descriptors.b getDescriptorForType();

    Object getField(Descriptors.f field);

    String getInitializationErrorString();

    Descriptors.f getOneofFieldDescriptor(Descriptors.k oneof);

    Object getRepeatedField(Descriptors.f field, int index);

    int getRepeatedFieldCount(Descriptors.f field);

    r2 getUnknownFields();

    boolean hasField(Descriptors.f field);

    boolean hasOneof(Descriptors.k oneof);
}

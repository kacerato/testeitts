package com.google.protobuf;

import com.google.protobuf.AbstractC12657b;
import com.google.protobuf.InterfaceC12659b1;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

public abstract class AbstractC12661c<MessageType extends InterfaceC12659b1> implements InterfaceC12723w1<MessageType> {
    private static final C12666d0 EMPTY_REGISTRY = C12666d0.d();

    public final MessageType a(MessageType message) throws InvalidProtocolBufferException {
        if (message == null || message.isInitialized()) {
            return message;
        }
        throw b(message).asInvalidProtocolBufferException().setUnfinishedMessage(message);
    }

    public final UninitializedMessageException b(MessageType message) {
        return message instanceof AbstractC12657b ? ((AbstractC12657b) message).newUninitializedMessageException() : new UninitializedMessageException(message);
    }

    @Override
    public MessageType parseDelimitedFrom(InputStream input, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
        return a(parsePartialDelimitedFrom(input, extensionRegistry));
    }

    @Override
    public MessageType parsePartialDelimitedFrom(InputStream input, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
        try {
            int read = input.read();
            if (read == -1) {
                return null;
            }
            return parsePartialFrom((InputStream) new AbstractC12657b.a.C1036a(input, C.P(read, input)), extensionRegistry);
        } catch (IOException e10) {
            throw new InvalidProtocolBufferException(e10);
        }
    }

    @Override
    public MessageType parseDelimitedFrom(InputStream input) throws InvalidProtocolBufferException {
        return parseDelimitedFrom(input, EMPTY_REGISTRY);
    }

    @Override
    public MessageType parsePartialDelimitedFrom(InputStream input) throws InvalidProtocolBufferException {
        return parsePartialDelimitedFrom(input, EMPTY_REGISTRY);
    }

    @Override
    public MessageType parsePartialFrom(C input) throws InvalidProtocolBufferException {
        return (MessageType) parsePartialFrom(input, EMPTY_REGISTRY);
    }

    @Override
    public MessageType parsePartialFrom(AbstractC12724x data, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
        C N10 = data.N();
        MessageType messagetype = (MessageType) parsePartialFrom(N10, extensionRegistry);
        try {
            N10.a(0);
            return messagetype;
        } catch (InvalidProtocolBufferException e10) {
            throw e10.setUnfinishedMessage(messagetype);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public MessageType parseFrom(C c10, C12666d0 c12666d0) throws InvalidProtocolBufferException {
        return (MessageType) a((InterfaceC12659b1) parsePartialFrom(c10, c12666d0));
    }

    @Override
    public MessageType parseFrom(C input) throws InvalidProtocolBufferException {
        return parseFrom(input, EMPTY_REGISTRY);
    }

    @Override
    public MessageType parseFrom(AbstractC12724x data, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
        return a(parsePartialFrom(data, extensionRegistry));
    }

    @Override
    public MessageType parsePartialFrom(AbstractC12724x data) throws InvalidProtocolBufferException {
        return parsePartialFrom(data, EMPTY_REGISTRY);
    }

    @Override
    public MessageType parseFrom(AbstractC12724x data) throws InvalidProtocolBufferException {
        return parseFrom(data, EMPTY_REGISTRY);
    }

    @Override
    public MessageType parsePartialFrom(byte[] data, int off, int len, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
        C r10 = C.r(data, off, len);
        MessageType messagetype = (MessageType) parsePartialFrom(r10, extensionRegistry);
        try {
            r10.a(0);
            return messagetype;
        } catch (InvalidProtocolBufferException e10) {
            throw e10.setUnfinishedMessage(messagetype);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public MessageType parseFrom(ByteBuffer byteBuffer, C12666d0 c12666d0) throws InvalidProtocolBufferException {
        C o10 = C.o(byteBuffer);
        InterfaceC12659b1 interfaceC12659b1 = (InterfaceC12659b1) parsePartialFrom(o10, c12666d0);
        try {
            o10.a(0);
            return (MessageType) a(interfaceC12659b1);
        } catch (InvalidProtocolBufferException e10) {
            throw e10.setUnfinishedMessage(interfaceC12659b1);
        }
    }

    @Override
    public MessageType parsePartialFrom(byte[] data, int off, int len) throws InvalidProtocolBufferException {
        return parsePartialFrom(data, off, len, EMPTY_REGISTRY);
    }

    @Override
    public MessageType parsePartialFrom(byte[] data, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
        return parsePartialFrom(data, 0, data.length, extensionRegistry);
    }

    @Override
    public MessageType parseFrom(ByteBuffer data) throws InvalidProtocolBufferException {
        return parseFrom(data, EMPTY_REGISTRY);
    }

    @Override
    public MessageType parsePartialFrom(byte[] data) throws InvalidProtocolBufferException {
        return parsePartialFrom(data, 0, data.length, EMPTY_REGISTRY);
    }

    @Override
    public MessageType parseFrom(byte[] data, int off, int len, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
        return a(parsePartialFrom(data, off, len, extensionRegistry));
    }

    @Override
    public MessageType parsePartialFrom(InputStream input, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
        C k10 = C.k(input);
        MessageType messagetype = (MessageType) parsePartialFrom(k10, extensionRegistry);
        try {
            k10.a(0);
            return messagetype;
        } catch (InvalidProtocolBufferException e10) {
            throw e10.setUnfinishedMessage(messagetype);
        }
    }

    @Override
    public MessageType parseFrom(byte[] data, int off, int len) throws InvalidProtocolBufferException {
        return parseFrom(data, off, len, EMPTY_REGISTRY);
    }

    @Override
    public MessageType parseFrom(byte[] data, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
        return parseFrom(data, 0, data.length, extensionRegistry);
    }

    @Override
    public MessageType parseFrom(byte[] data) throws InvalidProtocolBufferException {
        return parseFrom(data, EMPTY_REGISTRY);
    }

    @Override
    public MessageType parseFrom(InputStream input, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
        return a(parsePartialFrom(input, extensionRegistry));
    }

    @Override
    public MessageType parsePartialFrom(InputStream input) throws InvalidProtocolBufferException {
        return parsePartialFrom(input, EMPTY_REGISTRY);
    }

    @Override
    public MessageType parseFrom(InputStream input) throws InvalidProtocolBufferException {
        return parseFrom(input, EMPTY_REGISTRY);
    }
}

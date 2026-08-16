package com.google.protobuf;

import java.io.IOException;

public class I0 {

    public static final C12666d0 f68762e = C12666d0.d();

    public AbstractC12724x f68763a;

    public C12666d0 f68764b;

    public volatile InterfaceC12659b1 f68765c;

    public volatile AbstractC12724x f68766d;

    public I0(C12666d0 extensionRegistry, AbstractC12724x bytes) {
        a(extensionRegistry, bytes);
        this.f68764b = extensionRegistry;
        this.f68763a = bytes;
    }

    public static void a(C12666d0 extensionRegistry, AbstractC12724x bytes) {
        if (extensionRegistry == null) {
            throw new NullPointerException("found null ExtensionRegistry");
        }
        if (bytes == null) {
            throw new NullPointerException("found null ByteString");
        }
    }

    public static I0 e(InterfaceC12659b1 value) {
        I0 i02 = new I0();
        i02.m(value);
        return i02;
    }

    public static InterfaceC12659b1 j(InterfaceC12659b1 value, AbstractC12724x otherBytes, C12666d0 extensionRegistry) {
        try {
            return value.toBuilder().mergeFrom(otherBytes, extensionRegistry).build();
        } catch (InvalidProtocolBufferException unused) {
            return value;
        }
    }

    public void b() {
        this.f68763a = null;
        this.f68765c = null;
        this.f68766d = null;
    }

    public boolean c() {
        AbstractC12724x abstractC12724x;
        AbstractC12724x abstractC12724x2 = this.f68766d;
        AbstractC12724x abstractC12724x3 = AbstractC12724x.f69696g;
        return abstractC12724x2 == abstractC12724x3 || (this.f68765c == null && ((abstractC12724x = this.f68763a) == null || abstractC12724x == abstractC12724x3));
    }

    public void d(InterfaceC12659b1 defaultInstance) {
        if (this.f68765c != null) {
            return;
        }
        synchronized (this) {
            if (this.f68765c != null) {
                return;
            }
            try {
                if (this.f68763a != null) {
                    this.f68765c = defaultInstance.getParserForType().parseFrom(this.f68763a, this.f68764b);
                    this.f68766d = this.f68763a;
                } else {
                    this.f68765c = defaultInstance;
                    this.f68766d = AbstractC12724x.f69696g;
                }
            } catch (InvalidProtocolBufferException unused) {
                this.f68765c = defaultInstance;
                this.f68766d = AbstractC12724x.f69696g;
            }
        }
    }

    public boolean equals(Object o10) {
        if (this == o10) {
            return true;
        }
        if (!(o10 instanceof I0)) {
            return false;
        }
        I0 i02 = (I0) o10;
        InterfaceC12659b1 interfaceC12659b1 = this.f68765c;
        InterfaceC12659b1 interfaceC12659b12 = i02.f68765c;
        return (interfaceC12659b1 == null && interfaceC12659b12 == null) ? n().equals(i02.n()) : (interfaceC12659b1 == null || interfaceC12659b12 == null) ? interfaceC12659b1 != null ? interfaceC12659b1.equals(i02.g(interfaceC12659b1.getDefaultInstanceForType())) : g(interfaceC12659b12.getDefaultInstanceForType()).equals(interfaceC12659b12) : interfaceC12659b1.equals(interfaceC12659b12);
    }

    public int f() {
        if (this.f68766d != null) {
            return this.f68766d.size();
        }
        AbstractC12724x abstractC12724x = this.f68763a;
        if (abstractC12724x != null) {
            return abstractC12724x.size();
        }
        if (this.f68765c != null) {
            return this.f68765c.getSerializedSize();
        }
        return 0;
    }

    public InterfaceC12659b1 g(InterfaceC12659b1 defaultInstance) {
        d(defaultInstance);
        return this.f68765c;
    }

    public void h(I0 other) {
        AbstractC12724x abstractC12724x;
        if (other.c()) {
            return;
        }
        if (c()) {
            k(other);
            return;
        }
        if (this.f68764b == null) {
            this.f68764b = other.f68764b;
        }
        AbstractC12724x abstractC12724x2 = this.f68763a;
        if (abstractC12724x2 != null && (abstractC12724x = other.f68763a) != null) {
            this.f68763a = abstractC12724x2.m(abstractC12724x);
            return;
        }
        if (this.f68765c == null && other.f68765c != null) {
            m(j(other.f68765c, this.f68763a, this.f68764b));
        } else if (this.f68765c == null || other.f68765c != null) {
            m(this.f68765c.toBuilder().mergeFrom(other.f68765c).build());
        } else {
            m(j(this.f68765c, other.f68763a, other.f68764b));
        }
    }

    public int hashCode() {
        return 1;
    }

    public void i(C input, C12666d0 extensionRegistry) throws IOException {
        if (c()) {
            l(input.y(), extensionRegistry);
            return;
        }
        if (this.f68764b == null) {
            this.f68764b = extensionRegistry;
        }
        AbstractC12724x abstractC12724x = this.f68763a;
        if (abstractC12724x != null) {
            l(abstractC12724x.m(input.y()), this.f68764b);
        } else {
            try {
                m(this.f68765c.toBuilder().mergeFrom(input, extensionRegistry).build());
            } catch (InvalidProtocolBufferException unused) {
            }
        }
    }

    public void k(I0 other) {
        this.f68763a = other.f68763a;
        this.f68765c = other.f68765c;
        this.f68766d = other.f68766d;
        C12666d0 c12666d0 = other.f68764b;
        if (c12666d0 != null) {
            this.f68764b = c12666d0;
        }
    }

    public void l(AbstractC12724x bytes, C12666d0 extensionRegistry) {
        a(extensionRegistry, bytes);
        this.f68763a = bytes;
        this.f68764b = extensionRegistry;
        this.f68765c = null;
        this.f68766d = null;
    }

    public InterfaceC12659b1 m(InterfaceC12659b1 value) {
        InterfaceC12659b1 interfaceC12659b1 = this.f68765c;
        this.f68763a = null;
        this.f68766d = null;
        this.f68765c = value;
        return interfaceC12659b1;
    }

    public AbstractC12724x n() {
        if (this.f68766d != null) {
            return this.f68766d;
        }
        AbstractC12724x abstractC12724x = this.f68763a;
        if (abstractC12724x != null) {
            return abstractC12724x;
        }
        synchronized (this) {
            try {
                if (this.f68766d != null) {
                    return this.f68766d;
                }
                if (this.f68765c == null) {
                    this.f68766d = AbstractC12724x.f69696g;
                } else {
                    this.f68766d = this.f68765c.toByteString();
                }
                return this.f68766d;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void o(C2 writer, int fieldNumber) throws IOException {
        if (this.f68766d != null) {
            writer.h(fieldNumber, this.f68766d);
            return;
        }
        AbstractC12724x abstractC12724x = this.f68763a;
        if (abstractC12724x != null) {
            writer.h(fieldNumber, abstractC12724x);
        } else if (this.f68765c != null) {
            writer.K(fieldNumber, this.f68765c);
        } else {
            writer.h(fieldNumber, AbstractC12724x.f69696g);
        }
    }

    public I0() {
    }
}

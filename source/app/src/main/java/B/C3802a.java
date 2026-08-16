package b;

import com.android.aapt.ConfigurationOuterClass;
import com.android.aapt.Resources;
import com.google.protobuf.AbstractC12653a;
import com.google.protobuf.AbstractC12657b;
import com.google.protobuf.AbstractC12661c;
import com.google.protobuf.AbstractC12722w0;
import com.google.protobuf.AbstractC12724x;
import com.google.protobuf.C;
import com.google.protobuf.C12658b0;
import com.google.protobuf.C12666d0;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.Descriptors;
import com.google.protobuf.G1;
import com.google.protobuf.InterfaceC12670e1;
import com.google.protobuf.InterfaceC12723w1;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Q1;
import com.google.protobuf.UninitializedMessageException;
import com.google.protobuf.Y0;
import com.google.protobuf.r2;
import com.tonyodev.fetch2core.server.FileRequest;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class C3802a {

    public static final Descriptors.b f32746a;

    public static final AbstractC12722w0.h f32747b;

    public static final Descriptors.b f32748c;

    public static final AbstractC12722w0.h f32749d;

    public static Descriptors.g f32750e = Descriptors.g.B(new String[]{"\n\u0017ResourcesInternal.proto\u0012\u0010aapt.pb.internal\u001a\u0013Configuration.proto\u001a\u000fResources.proto\"\u0097\u0002\n\fCompiledFile\u0012\u0015\n\rresource_name\u0018\u0001 \u0001(\t\u0012&\n\u0006config\u0018\u0002 \u0001(\u000b2\u0016.aapt.pb.Configuration\u0012)\n\u0004type\u0018\u0003 \u0001(\u000e2\u001b.aapt.pb.FileReference.Type\u0012\u0013\n\u000bsource_path\u0018\u0004 \u0001(\t\u0012>\n\u000fexported_symbol\u0018\u0005 \u0003(\u000b2%.aapt.pb.internal.CompiledFile.Symbol\u001aH\n\u0006Symbol\u0012\u0015\n\rresource_name\u0018\u0001 \u0001(\t\u0012'\n\u0006source\u0018\u0002 \u0001(\u000b2\u0017.aapt.pb.SourcePositionB\u001a\n\u0018android.aapt.pb.internalb\u0006proto3"}, new Descriptors.g[]{ConfigurationOuterClass.getDescriptor(), Resources.getDescriptor()});

    public static final class C0874a extends AbstractC12722w0 implements b {

        public static final long f32751h = 0;

        public static final int f32752i = 1;

        public static final int f32753j = 2;

        public static final int f32754k = 3;

        public static final int f32755l = 4;

        public static final int f32756m = 5;

        public static final C0874a f32757n = new C0874a();

        public static final InterfaceC12723w1<C0874a> f32758o = new C0875a();

        public volatile Object f32759b;

        public ConfigurationOuterClass.Configuration f32760c;

        public int f32761d;

        public volatile Object f32762e;

        public List<c> f32763f;

        public byte f32764g;

        public class C0875a extends AbstractC12661c<C0874a> {
            @Override
            public C0874a parsePartialFrom(C c10, C12666d0 c12666d0) throws InvalidProtocolBufferException {
                b G62 = C0874a.G6();
                try {
                    G62.mergeFrom(c10, c12666d0);
                    return G62.buildPartial();
                } catch (InvalidProtocolBufferException e10) {
                    throw e10.setUnfinishedMessage(G62.buildPartial());
                } catch (UninitializedMessageException e11) {
                    throw e11.asInvalidProtocolBufferException().setUnfinishedMessage(G62.buildPartial());
                } catch (IOException e12) {
                    throw new InvalidProtocolBufferException(e12).setUnfinishedMessage(G62.buildPartial());
                }
            }
        }

        public static final class c extends AbstractC12722w0 implements d {

            public static final long f32773e = 0;

            public static final int f32774f = 1;

            public static final int f32775g = 2;

            public static final c f32776h = new c();

            public static final InterfaceC12723w1<c> f32777i = new C0876a();

            public volatile Object f32778b;

            public Resources.SourcePosition f32779c;

            public byte f32780d;

            public class C0876a extends AbstractC12661c<c> {
                @Override
                public c parsePartialFrom(C c10, C12666d0 c12666d0) throws InvalidProtocolBufferException {
                    b y62 = c.y6();
                    try {
                        y62.mergeFrom(c10, c12666d0);
                        return y62.buildPartial();
                    } catch (InvalidProtocolBufferException e10) {
                        throw e10.setUnfinishedMessage(y62.buildPartial());
                    } catch (UninitializedMessageException e11) {
                        throw e11.asInvalidProtocolBufferException().setUnfinishedMessage(y62.buildPartial());
                    } catch (IOException e12) {
                        throw new InvalidProtocolBufferException(e12).setUnfinishedMessage(y62.buildPartial());
                    }
                }
            }

            public static c C6(InputStream inputStream) throws IOException {
                return (c) AbstractC12722w0.parseDelimitedWithIOException(f32777i, inputStream);
            }

            public static c D6(InputStream inputStream, C12666d0 c12666d0) throws IOException {
                return (c) AbstractC12722w0.parseDelimitedWithIOException(f32777i, inputStream, c12666d0);
            }

            public static c E6(AbstractC12724x abstractC12724x) throws InvalidProtocolBufferException {
                return f32777i.parseFrom(abstractC12724x);
            }

            public static c F6(AbstractC12724x abstractC12724x, C12666d0 c12666d0) throws InvalidProtocolBufferException {
                return f32777i.parseFrom(abstractC12724x, c12666d0);
            }

            public static c G6(C c10) throws IOException {
                return (c) AbstractC12722w0.parseWithIOException(f32777i, c10);
            }

            public static c H6(C c10, C12666d0 c12666d0) throws IOException {
                return (c) AbstractC12722w0.parseWithIOException(f32777i, c10, c12666d0);
            }

            public static c I6(InputStream inputStream) throws IOException {
                return (c) AbstractC12722w0.parseWithIOException(f32777i, inputStream);
            }

            public static c J6(InputStream inputStream, C12666d0 c12666d0) throws IOException {
                return (c) AbstractC12722w0.parseWithIOException(f32777i, inputStream, c12666d0);
            }

            public static c K6(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return f32777i.parseFrom(byteBuffer);
            }

            public static c L6(ByteBuffer byteBuffer, C12666d0 c12666d0) throws InvalidProtocolBufferException {
                return f32777i.parseFrom(byteBuffer, c12666d0);
            }

            public static c M6(byte[] bArr) throws InvalidProtocolBufferException {
                return f32777i.parseFrom(bArr);
            }

            public static c N6(byte[] bArr, C12666d0 c12666d0) throws InvalidProtocolBufferException {
                return f32777i.parseFrom(bArr, c12666d0);
            }

            public static final Descriptors.b getDescriptor() {
                return C3802a.f32748c;
            }

            public static InterfaceC12723w1<c> parser() {
                return f32777i;
            }

            public static c w6() {
                return f32776h;
            }

            public static b y6() {
                return f32776h.toBuilder();
            }

            public static b z6(c cVar) {
                return f32776h.toBuilder().t6(cVar);
            }

            @Override
            public b newBuilderForType() {
                return y6();
            }

            @Override
            public b newBuilderForType(AbstractC12722w0.c cVar) {
                return new b(cVar);
            }

            @Override
            public String G() {
                Object obj = this.f32778b;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String g02 = ((AbstractC12724x) obj).g0();
                this.f32778b = g02;
                return g02;
            }

            @Override
            public b toBuilder() {
                return this == f32776h ? new b() : new b().t6(this);
            }

            @Override
            public boolean equals(Object obj) {
                if (obj == this) {
                    return true;
                }
                if (!(obj instanceof c)) {
                    return super.equals(obj);
                }
                c cVar = (c) obj;
                if (G().equals(cVar.G()) && hasSource() == cVar.hasSource()) {
                    return (!hasSource() || getSource().equals(cVar.getSource())) && getUnknownFields().equals(cVar.getUnknownFields());
                }
                return false;
            }

            @Override
            public AbstractC12724x g0() {
                Object obj = this.f32778b;
                if (!(obj instanceof String)) {
                    return (AbstractC12724x) obj;
                }
                AbstractC12724x w10 = AbstractC12724x.w((String) obj);
                this.f32778b = w10;
                return w10;
            }

            @Override
            public InterfaceC12723w1<c> getParserForType() {
                return f32777i;
            }

            @Override
            public int getSerializedSize() {
                int i10 = this.memoizedSize;
                if (i10 != -1) {
                    return i10;
                }
                int computeStringSize = !AbstractC12722w0.isStringEmpty(this.f32778b) ? AbstractC12722w0.computeStringSize(1, this.f32778b) : 0;
                if (this.f32779c != null) {
                    computeStringSize += CodedOutputStream.F0(2, getSource());
                }
                int serializedSize = computeStringSize + getUnknownFields().getSerializedSize();
                this.memoizedSize = serializedSize;
                return serializedSize;
            }

            @Override
            public Resources.SourcePosition getSource() {
                Resources.SourcePosition sourcePosition = this.f32779c;
                return sourcePosition == null ? Resources.SourcePosition.getDefaultInstance() : sourcePosition;
            }

            @Override
            public Resources.SourcePositionOrBuilder getSourceOrBuilder() {
                Resources.SourcePosition sourcePosition = this.f32779c;
                return sourcePosition == null ? Resources.SourcePosition.getDefaultInstance() : sourcePosition;
            }

            @Override
            public boolean hasSource() {
                return this.f32779c != null;
            }

            @Override
            public int hashCode() {
                int i10 = this.memoizedHashCode;
                if (i10 != 0) {
                    return i10;
                }
                int hashCode = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + G().hashCode();
                if (hasSource()) {
                    hashCode = (((hashCode * 37) + 2) * 53) + getSource().hashCode();
                }
                int hashCode2 = (hashCode * 29) + getUnknownFields().hashCode();
                this.memoizedHashCode = hashCode2;
                return hashCode2;
            }

            @Override
            public AbstractC12722w0.h internalGetFieldAccessorTable() {
                return C3802a.f32749d.d(c.class, b.class);
            }

            @Override
            public final boolean isInitialized() {
                byte b10 = this.f32780d;
                if (b10 == 1) {
                    return true;
                }
                if (b10 == 0) {
                    return false;
                }
                this.f32780d = (byte) 1;
                return true;
            }

            @Override
            public Object newInstance(AbstractC12722w0.i iVar) {
                return new c();
            }

            @Override
            public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
                if (!AbstractC12722w0.isStringEmpty(this.f32778b)) {
                    AbstractC12722w0.writeString(codedOutputStream, 1, this.f32778b);
                }
                if (this.f32779c != null) {
                    codedOutputStream.L1(2, getSource());
                }
                getUnknownFields().writeTo(codedOutputStream);
            }

            @Override
            public c getDefaultInstanceForType() {
                return f32776h;
            }

            public static final class b extends AbstractC12722w0.b<b> implements d {

                public int f32781b;

                public Object f32782c;

                public Resources.SourcePosition f32783d;

                public Q1<Resources.SourcePosition, Resources.SourcePosition.Builder, Resources.SourcePositionOrBuilder> f32784e;

                public static final Descriptors.b getDescriptor() {
                    return C3802a.f32748c;
                }

                public b A6(Resources.SourcePosition.Builder builder) {
                    Q1<Resources.SourcePosition, Resources.SourcePosition.Builder, Resources.SourcePositionOrBuilder> q12 = this.f32784e;
                    if (q12 == null) {
                        this.f32783d = builder.build();
                    } else {
                        q12.j(builder.build());
                    }
                    this.f32781b |= 2;
                    onChanged();
                    return this;
                }

                public b B6(Resources.SourcePosition sourcePosition) {
                    Q1<Resources.SourcePosition, Resources.SourcePosition.Builder, Resources.SourcePositionOrBuilder> q12 = this.f32784e;
                    if (q12 == null) {
                        sourcePosition.getClass();
                        this.f32783d = sourcePosition;
                    } else {
                        q12.j(sourcePosition);
                    }
                    this.f32781b |= 2;
                    onChanged();
                    return this;
                }

                @Override
                public final b setUnknownFields(r2 r2Var) {
                    return (b) super.setUnknownFields(r2Var);
                }

                @Override
                public String G() {
                    Object obj = this.f32782c;
                    if (obj instanceof String) {
                        return (String) obj;
                    }
                    String g02 = ((AbstractC12724x) obj).g0();
                    this.f32782c = g02;
                    return g02;
                }

                @Override
                public c buildPartial() {
                    c cVar = new c(this);
                    if (this.f32781b != 0) {
                        v3(cVar);
                    }
                    onBuilt();
                    return cVar;
                }

                @Override
                public b s6() {
                    super.s6();
                    this.f32781b = 0;
                    this.f32782c = "";
                    this.f32783d = null;
                    Q1<Resources.SourcePosition, Resources.SourcePosition.Builder, Resources.SourcePositionOrBuilder> q12 = this.f32784e;
                    if (q12 != null) {
                        q12.d();
                        this.f32784e = null;
                    }
                    return this;
                }

                @Override
                public AbstractC12724x g0() {
                    Object obj = this.f32782c;
                    if (!(obj instanceof String)) {
                        return (AbstractC12724x) obj;
                    }
                    AbstractC12724x w10 = AbstractC12724x.w((String) obj);
                    this.f32782c = w10;
                    return w10;
                }

                @Override
                public Descriptors.b getDescriptorForType() {
                    return C3802a.f32748c;
                }

                @Override
                public Resources.SourcePosition getSource() {
                    Q1<Resources.SourcePosition, Resources.SourcePosition.Builder, Resources.SourcePositionOrBuilder> q12 = this.f32784e;
                    if (q12 != null) {
                        return q12.f();
                    }
                    Resources.SourcePosition sourcePosition = this.f32783d;
                    return sourcePosition == null ? Resources.SourcePosition.getDefaultInstance() : sourcePosition;
                }

                public Resources.SourcePosition.Builder getSourceBuilder() {
                    this.f32781b |= 2;
                    onChanged();
                    return getSourceFieldBuilder().e();
                }

                public final Q1<Resources.SourcePosition, Resources.SourcePosition.Builder, Resources.SourcePositionOrBuilder> getSourceFieldBuilder() {
                    if (this.f32784e == null) {
                        this.f32784e = new Q1<>(getSource(), getParentForChildren(), isClean());
                        this.f32783d = null;
                    }
                    return this.f32784e;
                }

                @Override
                public Resources.SourcePositionOrBuilder getSourceOrBuilder() {
                    Q1<Resources.SourcePosition, Resources.SourcePosition.Builder, Resources.SourcePositionOrBuilder> q12 = this.f32784e;
                    if (q12 != null) {
                        return q12.g();
                    }
                    Resources.SourcePosition sourcePosition = this.f32783d;
                    return sourcePosition == null ? Resources.SourcePosition.getDefaultInstance() : sourcePosition;
                }

                @Override
                public boolean hasSource() {
                    return (this.f32781b & 2) != 0;
                }

                @Override
                public AbstractC12722w0.h internalGetFieldAccessorTable() {
                    return C3802a.f32749d.d(c.class, b.class);
                }

                @Override
                public final boolean isInitialized() {
                    return true;
                }

                @Override
                public c build() {
                    c buildPartial = buildPartial();
                    if (buildPartial.isInitialized()) {
                        return buildPartial;
                    }
                    throw AbstractC12653a.AbstractC1035a.newUninitializedMessageException((Y0) buildPartial);
                }

                public b q6() {
                    this.f32782c = c.w6().G();
                    this.f32781b &= -2;
                    onChanged();
                    return this;
                }

                public b r6() {
                    this.f32781b &= -3;
                    this.f32783d = null;
                    Q1<Resources.SourcePosition, Resources.SourcePosition.Builder, Resources.SourcePositionOrBuilder> q12 = this.f32784e;
                    if (q12 != null) {
                        q12.d();
                        this.f32784e = null;
                    }
                    onChanged();
                    return this;
                }

                @Override
                public c getDefaultInstanceForType() {
                    return c.w6();
                }

                public b t6(c cVar) {
                    if (cVar == c.w6()) {
                        return this;
                    }
                    if (!cVar.G().isEmpty()) {
                        this.f32782c = cVar.f32778b;
                        this.f32781b |= 1;
                        onChanged();
                    }
                    if (cVar.hasSource()) {
                        w6(cVar.getSource());
                    }
                    mergeUnknownFields(cVar.getUnknownFields());
                    onChanged();
                    return this;
                }

                @Override
                public b mergeFrom(C c10, C12666d0 c12666d0) throws IOException {
                    c12666d0.getClass();
                    boolean z10 = false;
                    while (!z10) {
                        try {
                            try {
                                int Z10 = c10.Z();
                                if (Z10 != 0) {
                                    if (Z10 == 10) {
                                        this.f32782c = c10.Y();
                                        this.f32781b |= 1;
                                    } else if (Z10 == 18) {
                                        c10.J(getSourceFieldBuilder().e(), c12666d0);
                                        this.f32781b |= 2;
                                    } else if (!super.parseUnknownField(c10, c12666d0, Z10)) {
                                    }
                                }
                                z10 = true;
                            } catch (InvalidProtocolBufferException e10) {
                                throw e10.unwrapIOException();
                            }
                        } catch (Throwable th2) {
                            onChanged();
                            throw th2;
                        }
                    }
                    onChanged();
                    return this;
                }

                public final void v3(c cVar) {
                    int i10 = this.f32781b;
                    if ((i10 & 1) != 0) {
                        cVar.f32778b = this.f32782c;
                    }
                    if ((i10 & 2) != 0) {
                        Q1<Resources.SourcePosition, Resources.SourcePosition.Builder, Resources.SourcePositionOrBuilder> q12 = this.f32784e;
                        cVar.f32779c = q12 == null ? this.f32783d : q12.b();
                    }
                }

                @Override
                public b mergeFrom(Y0 y02) {
                    if (y02 instanceof c) {
                        return t6((c) y02);
                    }
                    super.mergeFrom(y02);
                    return this;
                }

                public b w6(Resources.SourcePosition sourcePosition) {
                    Resources.SourcePosition sourcePosition2;
                    Q1<Resources.SourcePosition, Resources.SourcePosition.Builder, Resources.SourcePositionOrBuilder> q12 = this.f32784e;
                    if (q12 != null) {
                        q12.h(sourcePosition);
                    } else if ((this.f32781b & 2) == 0 || (sourcePosition2 = this.f32783d) == null || sourcePosition2 == Resources.SourcePosition.getDefaultInstance()) {
                        this.f32783d = sourcePosition;
                    } else {
                        getSourceBuilder().mergeFrom(sourcePosition);
                    }
                    this.f32781b |= 2;
                    onChanged();
                    return this;
                }

                @Override
                public final b mergeUnknownFields(r2 r2Var) {
                    return (b) super.mergeUnknownFields(r2Var);
                }

                public b y6(String str) {
                    str.getClass();
                    this.f32782c = str;
                    this.f32781b |= 1;
                    onChanged();
                    return this;
                }

                public b z6(AbstractC12724x abstractC12724x) {
                    abstractC12724x.getClass();
                    AbstractC12657b.checkByteStringIsUtf8(abstractC12724x);
                    this.f32782c = abstractC12724x;
                    this.f32781b |= 1;
                    onChanged();
                    return this;
                }

                public b() {
                    this.f32782c = "";
                }

                public b(AbstractC12722w0.c cVar) {
                    super(cVar);
                    this.f32782c = "";
                }
            }

            public c(AbstractC12722w0.b<?> bVar) {
                super(bVar);
                this.f32778b = "";
                this.f32780d = (byte) -1;
            }

            public c() {
                this.f32778b = "";
                this.f32780d = (byte) -1;
                this.f32778b = "";
            }
        }

        public interface d extends InterfaceC12670e1 {
            String G();

            AbstractC12724x g0();

            Resources.SourcePosition getSource();

            Resources.SourcePositionOrBuilder getSourceOrBuilder();

            boolean hasSource();
        }

        public static C0874a E6() {
            return f32757n;
        }

        public static b G6() {
            return f32757n.toBuilder();
        }

        public static b H6(C0874a c0874a) {
            return f32757n.toBuilder().J6(c0874a);
        }

        public static C0874a K6(InputStream inputStream) throws IOException {
            return (C0874a) AbstractC12722w0.parseDelimitedWithIOException(f32758o, inputStream);
        }

        public static C0874a L6(InputStream inputStream, C12666d0 c12666d0) throws IOException {
            return (C0874a) AbstractC12722w0.parseDelimitedWithIOException(f32758o, inputStream, c12666d0);
        }

        public static C0874a M6(AbstractC12724x abstractC12724x) throws InvalidProtocolBufferException {
            return f32758o.parseFrom(abstractC12724x);
        }

        public static C0874a N6(AbstractC12724x abstractC12724x, C12666d0 c12666d0) throws InvalidProtocolBufferException {
            return f32758o.parseFrom(abstractC12724x, c12666d0);
        }

        public static C0874a O6(C c10) throws IOException {
            return (C0874a) AbstractC12722w0.parseWithIOException(f32758o, c10);
        }

        public static C0874a P6(C c10, C12666d0 c12666d0) throws IOException {
            return (C0874a) AbstractC12722w0.parseWithIOException(f32758o, c10, c12666d0);
        }

        public static C0874a Q6(InputStream inputStream) throws IOException {
            return (C0874a) AbstractC12722w0.parseWithIOException(f32758o, inputStream);
        }

        public static C0874a R6(InputStream inputStream, C12666d0 c12666d0) throws IOException {
            return (C0874a) AbstractC12722w0.parseWithIOException(f32758o, inputStream, c12666d0);
        }

        public static C0874a S6(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return f32758o.parseFrom(byteBuffer);
        }

        public static C0874a T6(ByteBuffer byteBuffer, C12666d0 c12666d0) throws InvalidProtocolBufferException {
            return f32758o.parseFrom(byteBuffer, c12666d0);
        }

        public static C0874a U6(byte[] bArr) throws InvalidProtocolBufferException {
            return f32758o.parseFrom(bArr);
        }

        public static C0874a V6(byte[] bArr, C12666d0 c12666d0) throws InvalidProtocolBufferException {
            return f32758o.parseFrom(bArr, c12666d0);
        }

        public static final Descriptors.b getDescriptor() {
            return C3802a.f32746a;
        }

        public static InterfaceC12723w1<C0874a> parser() {
            return f32758o;
        }

        @Override
        public List<c> A3() {
            return this.f32763f;
        }

        @Override
        public C0874a getDefaultInstanceForType() {
            return f32757n;
        }

        @Override
        public String G() {
            Object obj = this.f32759b;
            if (obj instanceof String) {
                return (String) obj;
            }
            String g02 = ((AbstractC12724x) obj).g0();
            this.f32759b = g02;
            return g02;
        }

        @Override
        public b newBuilderForType() {
            return G6();
        }

        @Override
        public b newBuilderForType(AbstractC12722w0.c cVar) {
            return new b(cVar);
        }

        @Override
        public int S2() {
            return this.f32763f.size();
        }

        @Override
        public String S5() {
            Object obj = this.f32762e;
            if (obj instanceof String) {
                return (String) obj;
            }
            String g02 = ((AbstractC12724x) obj).g0();
            this.f32762e = g02;
            return g02;
        }

        @Override
        public b toBuilder() {
            return this == f32757n ? new b() : new b().J6(this);
        }

        @Override
        public AbstractC12724x Y5() {
            Object obj = this.f32762e;
            if (!(obj instanceof String)) {
                return (AbstractC12724x) obj;
            }
            AbstractC12724x w10 = AbstractC12724x.w((String) obj);
            this.f32762e = w10;
            return w10;
        }

        @Override
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof C0874a)) {
                return super.equals(obj);
            }
            C0874a c0874a = (C0874a) obj;
            if (G().equals(c0874a.G()) && hasConfig() == c0874a.hasConfig()) {
                return (!hasConfig() || getConfig().equals(c0874a.getConfig())) && this.f32761d == c0874a.f32761d && S5().equals(c0874a.S5()) && A3().equals(c0874a.A3()) && getUnknownFields().equals(c0874a.getUnknownFields());
            }
            return false;
        }

        @Override
        public AbstractC12724x g0() {
            Object obj = this.f32759b;
            if (!(obj instanceof String)) {
                return (AbstractC12724x) obj;
            }
            AbstractC12724x w10 = AbstractC12724x.w((String) obj);
            this.f32759b = w10;
            return w10;
        }

        @Override
        public ConfigurationOuterClass.Configuration getConfig() {
            ConfigurationOuterClass.Configuration configuration = this.f32760c;
            return configuration == null ? ConfigurationOuterClass.Configuration.getDefaultInstance() : configuration;
        }

        @Override
        public ConfigurationOuterClass.ConfigurationOrBuilder getConfigOrBuilder() {
            ConfigurationOuterClass.Configuration configuration = this.f32760c;
            return configuration == null ? ConfigurationOuterClass.Configuration.getDefaultInstance() : configuration;
        }

        @Override
        public InterfaceC12723w1<C0874a> getParserForType() {
            return f32758o;
        }

        @Override
        public int getSerializedSize() {
            int i10 = this.memoizedSize;
            if (i10 != -1) {
                return i10;
            }
            int computeStringSize = !AbstractC12722w0.isStringEmpty(this.f32759b) ? AbstractC12722w0.computeStringSize(1, this.f32759b) : 0;
            if (this.f32760c != null) {
                computeStringSize += CodedOutputStream.F0(2, getConfig());
            }
            if (this.f32761d != Resources.FileReference.Type.UNKNOWN.getNumber()) {
                computeStringSize += CodedOutputStream.k0(3, this.f32761d);
            }
            if (!AbstractC12722w0.isStringEmpty(this.f32762e)) {
                computeStringSize += AbstractC12722w0.computeStringSize(4, this.f32762e);
            }
            for (int i11 = 0; i11 < this.f32763f.size(); i11++) {
                computeStringSize += CodedOutputStream.F0(5, this.f32763f.get(i11));
            }
            int serializedSize = computeStringSize + getUnknownFields().getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override
        public Resources.FileReference.Type getType() {
            Resources.FileReference.Type forNumber = Resources.FileReference.Type.forNumber(this.f32761d);
            return forNumber == null ? Resources.FileReference.Type.UNRECOGNIZED : forNumber;
        }

        @Override
        public int getTypeValue() {
            return this.f32761d;
        }

        @Override
        public boolean hasConfig() {
            return this.f32760c != null;
        }

        @Override
        public int hashCode() {
            int i10 = this.memoizedHashCode;
            if (i10 != 0) {
                return i10;
            }
            int hashCode = ((((779 + getDescriptor().hashCode()) * 37) + 1) * 53) + G().hashCode();
            if (hasConfig()) {
                hashCode = (((hashCode * 37) + 2) * 53) + getConfig().hashCode();
            }
            int hashCode2 = (((((((hashCode * 37) + 3) * 53) + this.f32761d) * 37) + 4) * 53) + S5().hashCode();
            if (S2() > 0) {
                hashCode2 = (((hashCode2 * 37) + 5) * 53) + A3().hashCode();
            }
            int hashCode3 = (hashCode2 * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = hashCode3;
            return hashCode3;
        }

        @Override
        public AbstractC12722w0.h internalGetFieldAccessorTable() {
            return C3802a.f32747b.d(C0874a.class, b.class);
        }

        @Override
        public final boolean isInitialized() {
            byte b10 = this.f32764g;
            if (b10 == 1) {
                return true;
            }
            if (b10 == 0) {
                return false;
            }
            this.f32764g = (byte) 1;
            return true;
        }

        @Override
        public Object newInstance(AbstractC12722w0.i iVar) {
            return new C0874a();
        }

        @Override
        public c q2(int i10) {
            return this.f32763f.get(i10);
        }

        @Override
        public List<? extends d> t3() {
            return this.f32763f;
        }

        @Override
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            if (!AbstractC12722w0.isStringEmpty(this.f32759b)) {
                AbstractC12722w0.writeString(codedOutputStream, 1, this.f32759b);
            }
            if (this.f32760c != null) {
                codedOutputStream.L1(2, getConfig());
            }
            if (this.f32761d != Resources.FileReference.Type.UNKNOWN.getNumber()) {
                codedOutputStream.Q(3, this.f32761d);
            }
            if (!AbstractC12722w0.isStringEmpty(this.f32762e)) {
                AbstractC12722w0.writeString(codedOutputStream, 4, this.f32762e);
            }
            for (int i10 = 0; i10 < this.f32763f.size(); i10++) {
                codedOutputStream.L1(5, this.f32763f.get(i10));
            }
            getUnknownFields().writeTo(codedOutputStream);
        }

        @Override
        public d x4(int i10) {
            return this.f32763f.get(i10);
        }

        public static final class b extends AbstractC12722w0.b<b> implements b {

            public int f32765b;

            public Object f32766c;

            public ConfigurationOuterClass.Configuration f32767d;

            public Q1<ConfigurationOuterClass.Configuration, ConfigurationOuterClass.Configuration.Builder, ConfigurationOuterClass.ConfigurationOrBuilder> f32768e;

            public int f32769f;

            public Object f32770g;

            public List<c> f32771h;

            public G1<c, c.b, d> f32772i;

            public static final Descriptors.b getDescriptor() {
                return C3802a.f32746a;
            }

            @Override
            public List<c> A3() {
                G1<c, c.b, d> g12 = this.f32772i;
                return g12 == null ? Collections.unmodifiableList(this.f32771h) : g12.q();
            }

            public b A6() {
                this.f32766c = C0874a.E6().G();
                this.f32765b &= -2;
                onChanged();
                return this;
            }

            public b B6() {
                this.f32770g = C0874a.E6().S5();
                this.f32765b &= -9;
                onChanged();
                return this;
            }

            public b C6() {
                this.f32765b &= -5;
                this.f32769f = 0;
                onChanged();
                return this;
            }

            public final void D6() {
                if ((this.f32765b & 16) == 0) {
                    this.f32771h = new ArrayList(this.f32771h);
                    this.f32765b |= 16;
                }
            }

            @Override
            public C0874a getDefaultInstanceForType() {
                return C0874a.E6();
            }

            public c.b F6(int i10) {
                return H6().l(i10);
            }

            @Override
            public String G() {
                Object obj = this.f32766c;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String g02 = ((AbstractC12724x) obj).g0();
                this.f32766c = g02;
                return g02;
            }

            public List<c.b> G6() {
                return H6().m();
            }

            public final G1<c, c.b, d> H6() {
                if (this.f32772i == null) {
                    this.f32772i = new G1<>(this.f32771h, (this.f32765b & 16) != 0, getParentForChildren(), isClean());
                    this.f32771h = null;
                }
                return this.f32772i;
            }

            public b I1(int i10, c.b bVar) {
                G1<c, c.b, d> g12 = this.f32772i;
                if (g12 == null) {
                    D6();
                    this.f32771h.add(i10, bVar.build());
                    onChanged();
                } else {
                    g12.e(i10, bVar.build());
                }
                return this;
            }

            public b I6(ConfigurationOuterClass.Configuration configuration) {
                ConfigurationOuterClass.Configuration configuration2;
                Q1<ConfigurationOuterClass.Configuration, ConfigurationOuterClass.Configuration.Builder, ConfigurationOuterClass.ConfigurationOrBuilder> q12 = this.f32768e;
                if (q12 != null) {
                    q12.h(configuration);
                } else if ((this.f32765b & 2) == 0 || (configuration2 = this.f32767d) == null || configuration2 == ConfigurationOuterClass.Configuration.getDefaultInstance()) {
                    this.f32767d = configuration;
                } else {
                    getConfigBuilder().mergeFrom(configuration);
                }
                this.f32765b |= 2;
                onChanged();
                return this;
            }

            public b J6(C0874a c0874a) {
                if (c0874a == C0874a.E6()) {
                    return this;
                }
                if (!c0874a.G().isEmpty()) {
                    this.f32766c = c0874a.f32759b;
                    this.f32765b |= 1;
                    onChanged();
                }
                if (c0874a.hasConfig()) {
                    I6(c0874a.getConfig());
                }
                if (c0874a.f32761d != 0) {
                    X6(c0874a.getTypeValue());
                }
                if (!c0874a.S5().isEmpty()) {
                    this.f32770g = c0874a.f32762e;
                    this.f32765b |= 8;
                    onChanged();
                }
                if (this.f32772i == null) {
                    if (!c0874a.f32763f.isEmpty()) {
                        if (this.f32771h.isEmpty()) {
                            this.f32771h = c0874a.f32763f;
                            this.f32765b &= -17;
                        } else {
                            D6();
                            this.f32771h.addAll(c0874a.f32763f);
                        }
                        onChanged();
                    }
                } else if (!c0874a.f32763f.isEmpty()) {
                    if (this.f32772i.u()) {
                        this.f32772i.i();
                        this.f32772i = null;
                        this.f32771h = c0874a.f32763f;
                        this.f32765b &= -17;
                        this.f32772i = AbstractC12722w0.alwaysUseFieldBuilders ? H6() : null;
                    } else {
                        this.f32772i.b(c0874a.f32763f);
                    }
                }
                mergeUnknownFields(c0874a.getUnknownFields());
                onChanged();
                return this;
            }

            @Override
            public b mergeFrom(C c10, C12666d0 c12666d0) throws IOException {
                c12666d0.getClass();
                boolean z10 = false;
                while (!z10) {
                    try {
                        try {
                            int Z10 = c10.Z();
                            if (Z10 != 0) {
                                if (Z10 == 10) {
                                    this.f32766c = c10.Y();
                                    this.f32765b |= 1;
                                } else if (Z10 == 18) {
                                    c10.J(getConfigFieldBuilder().e(), c12666d0);
                                    this.f32765b |= 2;
                                } else if (Z10 == 24) {
                                    this.f32769f = c10.A();
                                    this.f32765b |= 4;
                                } else if (Z10 == 34) {
                                    this.f32770g = c10.Y();
                                    this.f32765b |= 8;
                                } else if (Z10 == 42) {
                                    c cVar = (c) c10.I(c.parser(), c12666d0);
                                    G1<c, c.b, d> g12 = this.f32772i;
                                    if (g12 == null) {
                                        D6();
                                        this.f32771h.add(cVar);
                                    } else {
                                        g12.f(cVar);
                                    }
                                } else if (!super.parseUnknownField(c10, c12666d0, Z10)) {
                                }
                            }
                            z10 = true;
                        } catch (InvalidProtocolBufferException e10) {
                            throw e10.unwrapIOException();
                        }
                    } catch (Throwable th2) {
                        onChanged();
                        throw th2;
                    }
                }
                onChanged();
                return this;
            }

            @Override
            public b mergeFrom(Y0 y02) {
                if (y02 instanceof C0874a) {
                    return J6((C0874a) y02);
                }
                super.mergeFrom(y02);
                return this;
            }

            @Override
            public final b mergeUnknownFields(r2 r2Var) {
                return (b) super.mergeUnknownFields(r2Var);
            }

            public b N6(int i10) {
                G1<c, c.b, d> g12 = this.f32772i;
                if (g12 == null) {
                    D6();
                    this.f32771h.remove(i10);
                    onChanged();
                } else {
                    g12.w(i10);
                }
                return this;
            }

            public b O6(ConfigurationOuterClass.Configuration.Builder builder) {
                Q1<ConfigurationOuterClass.Configuration, ConfigurationOuterClass.Configuration.Builder, ConfigurationOuterClass.ConfigurationOrBuilder> q12 = this.f32768e;
                if (q12 == null) {
                    this.f32767d = builder.build();
                } else {
                    q12.j(builder.build());
                }
                this.f32765b |= 2;
                onChanged();
                return this;
            }

            public b P6(ConfigurationOuterClass.Configuration configuration) {
                Q1<ConfigurationOuterClass.Configuration, ConfigurationOuterClass.Configuration.Builder, ConfigurationOuterClass.ConfigurationOrBuilder> q12 = this.f32768e;
                if (q12 == null) {
                    configuration.getClass();
                    this.f32767d = configuration;
                } else {
                    q12.j(configuration);
                }
                this.f32765b |= 2;
                onChanged();
                return this;
            }

            public b Q6(int i10, c.b bVar) {
                G1<c, c.b, d> g12 = this.f32772i;
                if (g12 == null) {
                    D6();
                    this.f32771h.set(i10, bVar.build());
                    onChanged();
                } else {
                    g12.x(i10, bVar.build());
                }
                return this;
            }

            public b R6(int i10, c cVar) {
                G1<c, c.b, d> g12 = this.f32772i;
                if (g12 == null) {
                    cVar.getClass();
                    D6();
                    this.f32771h.set(i10, cVar);
                    onChanged();
                } else {
                    g12.x(i10, cVar);
                }
                return this;
            }

            @Override
            public int S2() {
                G1<c, c.b, d> g12 = this.f32772i;
                return g12 == null ? this.f32771h.size() : g12.n();
            }

            @Override
            public String S5() {
                Object obj = this.f32770g;
                if (obj instanceof String) {
                    return (String) obj;
                }
                String g02 = ((AbstractC12724x) obj).g0();
                this.f32770g = g02;
                return g02;
            }

            public b S6(String str) {
                str.getClass();
                this.f32766c = str;
                this.f32765b |= 1;
                onChanged();
                return this;
            }

            public b T6(AbstractC12724x abstractC12724x) {
                abstractC12724x.getClass();
                AbstractC12657b.checkByteStringIsUtf8(abstractC12724x);
                this.f32766c = abstractC12724x;
                this.f32765b |= 1;
                onChanged();
                return this;
            }

            public b U6(String str) {
                str.getClass();
                this.f32770g = str;
                this.f32765b |= 8;
                onChanged();
                return this;
            }

            public b V6(AbstractC12724x abstractC12724x) {
                abstractC12724x.getClass();
                AbstractC12657b.checkByteStringIsUtf8(abstractC12724x);
                this.f32770g = abstractC12724x;
                this.f32765b |= 8;
                onChanged();
                return this;
            }

            public b W6(Resources.FileReference.Type type) {
                type.getClass();
                this.f32765b |= 4;
                this.f32769f = type.getNumber();
                onChanged();
                return this;
            }

            public b X6(int i10) {
                this.f32769f = i10;
                this.f32765b |= 4;
                onChanged();
                return this;
            }

            @Override
            public AbstractC12724x Y5() {
                Object obj = this.f32770g;
                if (!(obj instanceof String)) {
                    return (AbstractC12724x) obj;
                }
                AbstractC12724x w10 = AbstractC12724x.w((String) obj);
                this.f32770g = w10;
                return w10;
            }

            @Override
            public final b setUnknownFields(r2 r2Var) {
                return (b) super.setUnknownFields(r2Var);
            }

            public b a5(c.b bVar) {
                G1<c, c.b, d> g12 = this.f32772i;
                if (g12 == null) {
                    D6();
                    this.f32771h.add(bVar.build());
                    onChanged();
                } else {
                    g12.f(bVar.build());
                }
                return this;
            }

            @Override
            public AbstractC12724x g0() {
                Object obj = this.f32766c;
                if (!(obj instanceof String)) {
                    return (AbstractC12724x) obj;
                }
                AbstractC12724x w10 = AbstractC12724x.w((String) obj);
                this.f32766c = w10;
                return w10;
            }

            @Override
            public ConfigurationOuterClass.Configuration getConfig() {
                Q1<ConfigurationOuterClass.Configuration, ConfigurationOuterClass.Configuration.Builder, ConfigurationOuterClass.ConfigurationOrBuilder> q12 = this.f32768e;
                if (q12 != null) {
                    return q12.f();
                }
                ConfigurationOuterClass.Configuration configuration = this.f32767d;
                return configuration == null ? ConfigurationOuterClass.Configuration.getDefaultInstance() : configuration;
            }

            public ConfigurationOuterClass.Configuration.Builder getConfigBuilder() {
                this.f32765b |= 2;
                onChanged();
                return getConfigFieldBuilder().e();
            }

            public final Q1<ConfigurationOuterClass.Configuration, ConfigurationOuterClass.Configuration.Builder, ConfigurationOuterClass.ConfigurationOrBuilder> getConfigFieldBuilder() {
                if (this.f32768e == null) {
                    this.f32768e = new Q1<>(getConfig(), getParentForChildren(), isClean());
                    this.f32767d = null;
                }
                return this.f32768e;
            }

            @Override
            public ConfigurationOuterClass.ConfigurationOrBuilder getConfigOrBuilder() {
                Q1<ConfigurationOuterClass.Configuration, ConfigurationOuterClass.Configuration.Builder, ConfigurationOuterClass.ConfigurationOrBuilder> q12 = this.f32768e;
                if (q12 != null) {
                    return q12.g();
                }
                ConfigurationOuterClass.Configuration configuration = this.f32767d;
                return configuration == null ? ConfigurationOuterClass.Configuration.getDefaultInstance() : configuration;
            }

            @Override
            public Descriptors.b getDescriptorForType() {
                return C3802a.f32746a;
            }

            @Override
            public Resources.FileReference.Type getType() {
                Resources.FileReference.Type forNumber = Resources.FileReference.Type.forNumber(this.f32769f);
                return forNumber == null ? Resources.FileReference.Type.UNRECOGNIZED : forNumber;
            }

            @Override
            public int getTypeValue() {
                return this.f32769f;
            }

            @Override
            public boolean hasConfig() {
                return (this.f32765b & 2) != 0;
            }

            @Override
            public AbstractC12722w0.h internalGetFieldAccessorTable() {
                return C3802a.f32747b.d(C0874a.class, b.class);
            }

            @Override
            public final boolean isInitialized() {
                return true;
            }

            public b m1(Iterable<? extends c> iterable) {
                G1<c, c.b, d> g12 = this.f32772i;
                if (g12 == null) {
                    D6();
                    AbstractC12657b.a.addAll((Iterable) iterable, (List) this.f32771h);
                    onChanged();
                } else {
                    g12.b(iterable);
                }
                return this;
            }

            @Override
            public c q2(int i10) {
                G1<c, c.b, d> g12 = this.f32772i;
                return g12 == null ? this.f32771h.get(i10) : g12.o(i10);
            }

            public b q6(c cVar) {
                G1<c, c.b, d> g12 = this.f32772i;
                if (g12 == null) {
                    cVar.getClass();
                    D6();
                    this.f32771h.add(cVar);
                    onChanged();
                } else {
                    g12.f(cVar);
                }
                return this;
            }

            public c.b r6() {
                return H6().d(c.w6());
            }

            public c.b s6(int i10) {
                return H6().c(i10, c.w6());
            }

            @Override
            public List<? extends d> t3() {
                G1<c, c.b, d> g12 = this.f32772i;
                return g12 != null ? g12.s() : Collections.unmodifiableList(this.f32771h);
            }

            @Override
            public C0874a build() {
                C0874a buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractC12653a.AbstractC1035a.newUninitializedMessageException((Y0) buildPartial);
            }

            @Override
            public C0874a buildPartial() {
                C0874a c0874a = new C0874a(this);
                w6(c0874a);
                if (this.f32765b != 0) {
                    v6(c0874a);
                }
                onBuilt();
                return c0874a;
            }

            public b v3(int i10, c cVar) {
                G1<c, c.b, d> g12 = this.f32772i;
                if (g12 == null) {
                    cVar.getClass();
                    D6();
                    this.f32771h.add(i10, cVar);
                    onChanged();
                } else {
                    g12.e(i10, cVar);
                }
                return this;
            }

            public final void v6(C0874a c0874a) {
                int i10 = this.f32765b;
                if ((i10 & 1) != 0) {
                    c0874a.f32759b = this.f32766c;
                }
                if ((i10 & 2) != 0) {
                    Q1<ConfigurationOuterClass.Configuration, ConfigurationOuterClass.Configuration.Builder, ConfigurationOuterClass.ConfigurationOrBuilder> q12 = this.f32768e;
                    c0874a.f32760c = q12 == null ? this.f32767d : q12.b();
                }
                if ((i10 & 4) != 0) {
                    c0874a.f32761d = this.f32769f;
                }
                if ((i10 & 8) != 0) {
                    c0874a.f32762e = this.f32770g;
                }
            }

            public final void w6(C0874a c0874a) {
                G1<c, c.b, d> g12 = this.f32772i;
                if (g12 != null) {
                    c0874a.f32763f = g12.g();
                    return;
                }
                if ((this.f32765b & 16) != 0) {
                    this.f32771h = Collections.unmodifiableList(this.f32771h);
                    this.f32765b &= -17;
                }
                c0874a.f32763f = this.f32771h;
            }

            @Override
            public d x4(int i10) {
                G1<c, c.b, d> g12 = this.f32772i;
                return g12 == null ? this.f32771h.get(i10) : g12.r(i10);
            }

            @Override
            public b s6() {
                super.s6();
                this.f32765b = 0;
                this.f32766c = "";
                this.f32767d = null;
                Q1<ConfigurationOuterClass.Configuration, ConfigurationOuterClass.Configuration.Builder, ConfigurationOuterClass.ConfigurationOrBuilder> q12 = this.f32768e;
                if (q12 != null) {
                    q12.d();
                    this.f32768e = null;
                }
                this.f32769f = 0;
                this.f32770g = "";
                G1<c, c.b, d> g12 = this.f32772i;
                if (g12 == null) {
                    this.f32771h = Collections.emptyList();
                } else {
                    this.f32771h = null;
                    g12.h();
                }
                this.f32765b &= -17;
                return this;
            }

            public b y6() {
                this.f32765b &= -3;
                this.f32767d = null;
                Q1<ConfigurationOuterClass.Configuration, ConfigurationOuterClass.Configuration.Builder, ConfigurationOuterClass.ConfigurationOrBuilder> q12 = this.f32768e;
                if (q12 != null) {
                    q12.d();
                    this.f32768e = null;
                }
                onChanged();
                return this;
            }

            public b z6() {
                G1<c, c.b, d> g12 = this.f32772i;
                if (g12 == null) {
                    this.f32771h = Collections.emptyList();
                    this.f32765b &= -17;
                    onChanged();
                } else {
                    g12.h();
                }
                return this;
            }

            public b() {
                this.f32766c = "";
                this.f32769f = 0;
                this.f32770g = "";
                this.f32771h = Collections.emptyList();
            }

            public b(AbstractC12722w0.c cVar) {
                super(cVar);
                this.f32766c = "";
                this.f32769f = 0;
                this.f32770g = "";
                this.f32771h = Collections.emptyList();
            }
        }

        public C0874a(AbstractC12722w0.b<?> bVar) {
            super(bVar);
            this.f32759b = "";
            this.f32761d = 0;
            this.f32762e = "";
            this.f32764g = (byte) -1;
        }

        public C0874a() {
            this.f32759b = "";
            this.f32761d = 0;
            this.f32762e = "";
            this.f32764g = (byte) -1;
            this.f32759b = "";
            this.f32761d = 0;
            this.f32762e = "";
            this.f32763f = Collections.emptyList();
        }
    }

    public interface b extends InterfaceC12670e1 {
        List<C0874a.c> A3();

        String G();

        int S2();

        String S5();

        AbstractC12724x Y5();

        AbstractC12724x g0();

        ConfigurationOuterClass.Configuration getConfig();

        ConfigurationOuterClass.ConfigurationOrBuilder getConfigOrBuilder();

        Resources.FileReference.Type getType();

        int getTypeValue();

        boolean hasConfig();

        C0874a.c q2(int i10);

        List<? extends C0874a.d> t3();

        C0874a.d x4(int i10);
    }

    static {
        Descriptors.b bVar = e().u().get(0);
        f32746a = bVar;
        f32747b = new AbstractC12722w0.h(bVar, new String[]{"ResourceName", "Config", FileRequest.FIELD_TYPE, "SourcePath", "ExportedSymbol"});
        Descriptors.b bVar2 = bVar.u().get(0);
        f32748c = bVar2;
        f32749d = new AbstractC12722w0.h(bVar2, new String[]{"ResourceName", "Source"});
        ConfigurationOuterClass.getDescriptor();
        Resources.getDescriptor();
    }

    public static Descriptors.g e() {
        return f32750e;
    }

    public static void f(C12658b0 c12658b0) {
        g(c12658b0);
    }

    public static void g(C12666d0 c12666d0) {
    }
}

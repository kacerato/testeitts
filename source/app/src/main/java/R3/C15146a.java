package r3;

import com.google.protobuf.AbstractC12653a;
import com.google.protobuf.AbstractC12657b;
import com.google.protobuf.AbstractC12661c;
import com.google.protobuf.AbstractC12722w0;
import com.google.protobuf.AbstractC12724x;
import com.google.protobuf.B1;
import com.google.protobuf.C;
import com.google.protobuf.C1;
import com.google.protobuf.C12658b0;
import com.google.protobuf.C12666d0;
import com.google.protobuf.CodedOutputStream;
import com.google.protobuf.D0;
import com.google.protobuf.Descriptors;
import com.google.protobuf.G1;
import com.google.protobuf.H;
import com.google.protobuf.InterfaceC12670e1;
import com.google.protobuf.InterfaceC12723w1;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.J0;
import com.google.protobuf.K0;
import com.google.protobuf.Q1;
import com.google.protobuf.UninitializedMessageException;
import com.google.protobuf.Y0;
import com.google.protobuf.r2;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class C15146a {

    public static final Descriptors.b f108550a;

    public static final AbstractC12722w0.h f108551b;

    public static final Descriptors.b f108552c;

    public static final AbstractC12722w0.h f108553d;

    public static final Descriptors.b f108554e;

    public static final AbstractC12722w0.h f108555f;

    public static final Descriptors.b f108556g;

    public static final AbstractC12722w0.h f108557h;

    public static Descriptors.g f108558i = Descriptors.g.B(new String[]{"\n%google/protobuf/compiler/plugin.proto\u0012\u0018google.protobuf.compiler\u001a google/protobuf/descriptor.proto\"c\n\u0007Version\u0012\u0014\n\u0005major\u0018\u0001 \u0001(\u0005R\u0005major\u0012\u0014\n\u0005minor\u0018\u0002 \u0001(\u0005R\u0005minor\u0012\u0014\n\u0005patch\u0018\u0003 \u0001(\u0005R\u0005patch\u0012\u0016\n\u0006suffix\u0018\u0004 \u0001(\tR\u0006suffix\"\u00f1\u0001\n\u0014CodeGeneratorRequest\u0012(\n\u0010file_to_generate\u0018\u0001 \u0003(\tR\u000efileToGenerate\u0012\u001c\n\tparameter\u0018\u0002 \u0001(\tR\tparameter\u0012C\n\nproto_file\u0018\u000f \u0003(\u000b2$.google.protobuf.FileDescriptorProtoR\tprotoFile\u0012L\n\u0010compiler_version\u0018\u0003 \u0001(\u000b2!.google.protobuf.compiler.VersionR\u000fcompilerVersion\"\u0094\u0003\n\u0015CodeGeneratorResponse\u0012\u0014\n\u0005error\u0018\u0001 \u0001(\tR\u0005error\u0012-\n\u0012supported_features\u0018\u0002 \u0001(\u0004R\u0011supportedFeatures\u0012H\n\u0004file\u0018\u000f \u0003(\u000b24.google.protobuf.compiler.CodeGeneratorResponse.FileR\u0004file\u001a\u00b1\u0001\n\u0004File\u0012\u0012\n\u0004name\u0018\u0001 \u0001(\tR\u0004name\u0012'\n\u000finsertion_point\u0018\u0002 \u0001(\tR\u000einsertionPoint\u0012\u0018\n\u0007content\u0018\u000f \u0001(\tR\u0007content\u0012R\n\u0013generated_code_info\u0018\u0010 \u0001(\u000b2\".google.protobuf.GeneratedCodeInfoR\u0011generatedCodeInfo\"8\n\u0007Feature\u0012\u0010\n\fFEATURE_NONE\u0010\u0000\u0012\u001b\n\u0017FEATURE_PROTO3_OPTIONAL\u0010\u0001Br\n\u001ccom.google.protobuf.compilerB\fPluginProtosZ)google.golang.org/protobuf/types/pluginpb\u00aa\u0002\u0018Google.Protobuf.Compiler"}, new Descriptors.g[]{H.c0()});

    public static final class b extends AbstractC12722w0 implements c {

        public static final long f108559h = 0;

        public static final int f108560i = 1;

        public static final int f108561j = 2;

        public static final int f108562k = 15;

        public static final int f108563l = 3;

        public static final b f108564m = new b();

        @Deprecated
        public static final InterfaceC12723w1<b> f108565n = new C1975a();

        public int f108566b;

        public J0 f108567c;

        public volatile Object f108568d;

        public List<H.r> f108569e;

        public f f108570f;

        public byte f108571g;

        public class C1975a extends AbstractC12661c<b> {
            @Override
            public b parsePartialFrom(C input, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
                C1976b G62 = b.G6();
                try {
                    G62.mergeFrom(input, extensionRegistry);
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

        public static int B6(b bVar, int i10) {
            int i11 = i10 | bVar.f108566b;
            bVar.f108566b = i11;
            return i11;
        }

        public static b D6() {
            return f108564m;
        }

        public static C1976b G6() {
            return f108564m.toBuilder();
        }

        public static C1976b H6(b prototype) {
            return f108564m.toBuilder().S6(prototype);
        }

        public static b K6(InputStream input) throws IOException {
            return (b) AbstractC12722w0.parseDelimitedWithIOException(f108565n, input);
        }

        public static b L6(InputStream input, C12666d0 extensionRegistry) throws IOException {
            return (b) AbstractC12722w0.parseDelimitedWithIOException(f108565n, input, extensionRegistry);
        }

        public static b M6(AbstractC12724x data) throws InvalidProtocolBufferException {
            return f108565n.parseFrom(data);
        }

        public static b N6(AbstractC12724x data, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
            return f108565n.parseFrom(data, extensionRegistry);
        }

        public static b O6(C input) throws IOException {
            return (b) AbstractC12722w0.parseWithIOException(f108565n, input);
        }

        public static b P6(C input, C12666d0 extensionRegistry) throws IOException {
            return (b) AbstractC12722w0.parseWithIOException(f108565n, input, extensionRegistry);
        }

        public static b Q6(InputStream input) throws IOException {
            return (b) AbstractC12722w0.parseWithIOException(f108565n, input);
        }

        public static b R6(InputStream input, C12666d0 extensionRegistry) throws IOException {
            return (b) AbstractC12722w0.parseWithIOException(f108565n, input, extensionRegistry);
        }

        public static b S6(ByteBuffer data) throws InvalidProtocolBufferException {
            return f108565n.parseFrom(data);
        }

        public static b T6(ByteBuffer data, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
            return f108565n.parseFrom(data, extensionRegistry);
        }

        public static b U6(byte[] data) throws InvalidProtocolBufferException {
            return f108565n.parseFrom(data);
        }

        public static b V6(byte[] data, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
            return f108565n.parseFrom(data, extensionRegistry);
        }

        public static final Descriptors.b getDescriptor() {
            return C15146a.f108552c;
        }

        public static InterfaceC12723w1<b> parser() {
            return f108565n;
        }

        @Override
        public b getDefaultInstanceForType() {
            return f108564m;
        }

        @Override
        public C1 X1() {
            return this.f108567c;
        }

        @Override
        public C1976b newBuilderForType() {
            return G6();
        }

        @Override
        public List<H.r> J1() {
            return this.f108569e;
        }

        @Override
        public C1976b newBuilderForType(AbstractC12722w0.c parent) {
            return new C1976b(parent);
        }

        @Override
        public H.s P0(int index) {
            return this.f108569e.get(index);
        }

        @Override
        public int Q2() {
            return this.f108567c.size();
        }

        @Override
        public C1976b toBuilder() {
            return this == f108564m ? new C1976b() : new C1976b().S6(this);
        }

        @Override
        public H.r Z1(int index) {
            return this.f108569e.get(index);
        }

        @Override
        public boolean equals(final Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof b)) {
                return super.equals(obj);
            }
            b bVar = (b) obj;
            if (!X1().equals(bVar.X1()) || o1() != bVar.o1()) {
                return false;
            }
            if ((!o1() || getParameter().equals(bVar.getParameter())) && J1().equals(bVar.J1()) && p2() == bVar.p2()) {
                return (!p2() || getCompilerVersion().equals(bVar.getCompilerVersion())) && getUnknownFields().equals(bVar.getUnknownFields());
            }
            return false;
        }

        @Override
        public g f3() {
            f fVar = this.f108570f;
            return fVar == null ? f.z6() : fVar;
        }

        @Override
        public f getCompilerVersion() {
            f fVar = this.f108570f;
            return fVar == null ? f.z6() : fVar;
        }

        @Override
        public String getParameter() {
            Object obj = this.f108568d;
            if (obj instanceof String) {
                return (String) obj;
            }
            AbstractC12724x abstractC12724x = (AbstractC12724x) obj;
            String g02 = abstractC12724x.g0();
            if (abstractC12724x.J()) {
                this.f108568d = g02;
            }
            return g02;
        }

        @Override
        public InterfaceC12723w1<b> getParserForType() {
            return f108565n;
        }

        @Override
        public int getSerializedSize() {
            int i10 = this.memoizedSize;
            if (i10 != -1) {
                return i10;
            }
            int i11 = 0;
            for (int i12 = 0; i12 < this.f108567c.size(); i12++) {
                i11 += AbstractC12722w0.computeStringSizeNoTag(this.f108567c.Ee(i12));
            }
            int size = i11 + X1().size();
            if ((this.f108566b & 1) != 0) {
                size += AbstractC12722w0.computeStringSize(2, this.f108568d);
            }
            if ((this.f108566b & 2) != 0) {
                size += CodedOutputStream.F0(3, getCompilerVersion());
            }
            for (int i13 = 0; i13 < this.f108569e.size(); i13++) {
                size += CodedOutputStream.F0(15, this.f108569e.get(i13));
            }
            int serializedSize = size + getUnknownFields().getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override
        public int hashCode() {
            int i10 = this.memoizedHashCode;
            if (i10 != 0) {
                return i10;
            }
            int hashCode = 779 + getDescriptor().hashCode();
            if (Q2() > 0) {
                hashCode = (((hashCode * 37) + 1) * 53) + X1().hashCode();
            }
            if (o1()) {
                hashCode = (((hashCode * 37) + 2) * 53) + getParameter().hashCode();
            }
            if (o4() > 0) {
                hashCode = (((hashCode * 37) + 15) * 53) + J1().hashCode();
            }
            if (p2()) {
                hashCode = (((hashCode * 37) + 3) * 53) + getCompilerVersion().hashCode();
            }
            int hashCode2 = (hashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override
        public AbstractC12722w0.h internalGetFieldAccessorTable() {
            return C15146a.f108553d.d(b.class, C1976b.class);
        }

        @Override
        public final boolean isInitialized() {
            byte b10 = this.f108571g;
            if (b10 == 1) {
                return true;
            }
            if (b10 == 0) {
                return false;
            }
            for (int i10 = 0; i10 < o4(); i10++) {
                if (!Z1(i10).isInitialized()) {
                    this.f108571g = (byte) 0;
                    return false;
                }
            }
            this.f108571g = (byte) 1;
            return true;
        }

        @Override
        public List<? extends H.s> l3() {
            return this.f108569e;
        }

        @Override
        public AbstractC12724x l4(int index) {
            return this.f108567c.ub(index);
        }

        @Override
        public Object newInstance(AbstractC12722w0.i unused) {
            return new b();
        }

        @Override
        public boolean o1() {
            return (this.f108566b & 1) != 0;
        }

        @Override
        public int o4() {
            return this.f108569e.size();
        }

        @Override
        public boolean p2() {
            return (this.f108566b & 2) != 0;
        }

        @Override
        public AbstractC12724x t5() {
            Object obj = this.f108568d;
            if (!(obj instanceof String)) {
                return (AbstractC12724x) obj;
            }
            AbstractC12724x w10 = AbstractC12724x.w((String) obj);
            this.f108568d = w10;
            return w10;
        }

        @Override
        public String u5(int index) {
            return this.f108567c.get(index);
        }

        @Override
        public void writeTo(CodedOutputStream output) throws IOException {
            for (int i10 = 0; i10 < this.f108567c.size(); i10++) {
                AbstractC12722w0.writeString(output, 1, this.f108567c.Ee(i10));
            }
            if ((this.f108566b & 1) != 0) {
                AbstractC12722w0.writeString(output, 2, this.f108568d);
            }
            if ((this.f108566b & 2) != 0) {
                output.L1(3, getCompilerVersion());
            }
            for (int i11 = 0; i11 < this.f108569e.size(); i11++) {
                output.L1(15, this.f108569e.get(i11));
            }
            getUnknownFields().writeTo(output);
        }

        public static final class C1976b extends AbstractC12722w0.b<C1976b> implements c {

            public int f108572b;

            public J0 f108573c;

            public Object f108574d;

            public List<H.r> f108575e;

            public G1<H.r, H.r.b, H.s> f108576f;

            public f f108577g;

            public Q1<f, f.b, g> f108578h;

            private void O6() {
                if (AbstractC12722w0.alwaysUseFieldBuilders) {
                    N6();
                    I6();
                }
            }

            public static final Descriptors.b getDescriptor() {
                return C15146a.f108552c;
            }

            @Override
            public C1976b s6() {
                super.s6();
                this.f108572b = 0;
                this.f108573c = J0.n();
                this.f108574d = "";
                G1<H.r, H.r.b, H.s> g12 = this.f108576f;
                if (g12 == null) {
                    this.f108575e = Collections.emptyList();
                } else {
                    this.f108575e = null;
                    g12.h();
                }
                this.f108572b &= -5;
                this.f108577g = null;
                Q1<f, f.b, g> q12 = this.f108578h;
                if (q12 != null) {
                    q12.d();
                    this.f108578h = null;
                }
                return this;
            }

            public C1976b B6() {
                this.f108572b &= -9;
                this.f108577g = null;
                Q1<f, f.b, g> q12 = this.f108578h;
                if (q12 != null) {
                    q12.d();
                    this.f108578h = null;
                }
                onChanged();
                return this;
            }

            public C1976b C6() {
                this.f108573c = J0.n();
                this.f108572b &= -2;
                onChanged();
                return this;
            }

            public C1976b D6() {
                this.f108574d = b.D6().getParameter();
                this.f108572b &= -3;
                onChanged();
                return this;
            }

            public C1976b E6() {
                G1<H.r, H.r.b, H.s> g12 = this.f108576f;
                if (g12 == null) {
                    this.f108575e = Collections.emptyList();
                    this.f108572b &= -5;
                    onChanged();
                } else {
                    g12.h();
                }
                return this;
            }

            public final void F6() {
                if (!this.f108573c.hc()) {
                    this.f108573c = new J0((K0) this.f108573c);
                }
                this.f108572b |= 1;
            }

            public final void G6() {
                if ((this.f108572b & 4) == 0) {
                    this.f108575e = new ArrayList(this.f108575e);
                    this.f108572b |= 4;
                }
            }

            public f.b H6() {
                this.f108572b |= 8;
                onChanged();
                return I6().e();
            }

            public C1976b I1(Iterable<? extends H.r> values) {
                G1<H.r, H.r.b, H.s> g12 = this.f108576f;
                if (g12 == null) {
                    G6();
                    AbstractC12657b.a.addAll((Iterable) values, (List) this.f108575e);
                    onChanged();
                } else {
                    g12.b(values);
                }
                return this;
            }

            public final Q1<f, f.b, g> I6() {
                if (this.f108578h == null) {
                    this.f108578h = new Q1<>(getCompilerVersion(), getParentForChildren(), isClean());
                    this.f108577g = null;
                }
                return this.f108578h;
            }

            @Override
            public List<H.r> J1() {
                G1<H.r, H.r.b, H.s> g12 = this.f108576f;
                return g12 == null ? Collections.unmodifiableList(this.f108575e) : g12.q();
            }

            @Override
            public b getDefaultInstanceForType() {
                return b.D6();
            }

            @Override
            public C1 X1() {
                this.f108573c.r9();
                return this.f108573c;
            }

            public H.r.b L6(int index) {
                return N6().l(index);
            }

            public List<H.r.b> M6() {
                return N6().m();
            }

            public final G1<H.r, H.r.b, H.s> N6() {
                if (this.f108576f == null) {
                    this.f108576f = new G1<>(this.f108575e, (this.f108572b & 4) != 0, getParentForChildren(), isClean());
                    this.f108575e = null;
                }
                return this.f108576f;
            }

            @Override
            public H.s P0(int index) {
                G1<H.r, H.r.b, H.s> g12 = this.f108576f;
                return g12 == null ? this.f108575e.get(index) : g12.r(index);
            }

            public C1976b P6(f value) {
                f fVar;
                Q1<f, f.b, g> q12 = this.f108578h;
                if (q12 != null) {
                    q12.h(value);
                } else if ((this.f108572b & 8) == 0 || (fVar = this.f108577g) == null || fVar == f.z6()) {
                    this.f108577g = value;
                } else {
                    H6().x6(value);
                }
                this.f108572b |= 8;
                onChanged();
                return this;
            }

            @Override
            public int Q2() {
                return this.f108573c.size();
            }

            @Override
            public C1976b mergeFrom(C input, C12666d0 extensionRegistry) throws IOException {
                extensionRegistry.getClass();
                boolean z10 = false;
                while (!z10) {
                    try {
                        try {
                            int Z10 = input.Z();
                            if (Z10 != 0) {
                                if (Z10 == 10) {
                                    AbstractC12724x y10 = input.y();
                                    F6();
                                    this.f108573c.b3(y10);
                                } else if (Z10 == 18) {
                                    this.f108574d = input.y();
                                    this.f108572b |= 2;
                                } else if (Z10 == 26) {
                                    input.J(I6().e(), extensionRegistry);
                                    this.f108572b |= 8;
                                } else if (Z10 == 122) {
                                    H.r rVar = (H.r) input.I(H.r.f68557F, extensionRegistry);
                                    G1<H.r, H.r.b, H.s> g12 = this.f108576f;
                                    if (g12 == null) {
                                        G6();
                                        this.f108575e.add(rVar);
                                    } else {
                                        g12.f(rVar);
                                    }
                                } else if (!super.parseUnknownField(input, extensionRegistry, Z10)) {
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
            public C1976b mergeFrom(Y0 other) {
                if (other instanceof b) {
                    return S6((b) other);
                }
                super.mergeFrom(other);
                return this;
            }

            public C1976b S6(b other) {
                if (other == b.D6()) {
                    return this;
                }
                if (!other.f108567c.isEmpty()) {
                    if (this.f108573c.isEmpty()) {
                        this.f108573c = other.f108567c;
                        this.f108572b |= 1;
                    } else {
                        F6();
                        this.f108573c.addAll(other.f108567c);
                    }
                    onChanged();
                }
                if (other.o1()) {
                    this.f108574d = other.f108568d;
                    this.f108572b |= 2;
                    onChanged();
                }
                if (this.f108576f == null) {
                    if (!other.f108569e.isEmpty()) {
                        if (this.f108575e.isEmpty()) {
                            this.f108575e = other.f108569e;
                            this.f108572b &= -5;
                        } else {
                            G6();
                            this.f108575e.addAll(other.f108569e);
                        }
                        onChanged();
                    }
                } else if (!other.f108569e.isEmpty()) {
                    if (this.f108576f.u()) {
                        this.f108576f.i();
                        this.f108576f = null;
                        this.f108575e = other.f108569e;
                        this.f108572b &= -5;
                        this.f108576f = AbstractC12722w0.alwaysUseFieldBuilders ? N6() : null;
                    } else {
                        this.f108576f.b(other.f108569e);
                    }
                }
                if (other.p2()) {
                    P6(other.getCompilerVersion());
                }
                mergeUnknownFields(other.getUnknownFields());
                onChanged();
                return this;
            }

            @Override
            public final C1976b mergeUnknownFields(final r2 unknownFields) {
                return (C1976b) super.mergeUnknownFields(unknownFields);
            }

            public C1976b U6(int index) {
                G1<H.r, H.r.b, H.s> g12 = this.f108576f;
                if (g12 == null) {
                    G6();
                    this.f108575e.remove(index);
                    onChanged();
                } else {
                    g12.w(index);
                }
                return this;
            }

            public C1976b V6(f.b builderForValue) {
                Q1<f, f.b, g> q12 = this.f108578h;
                if (q12 == null) {
                    this.f108577g = builderForValue.build();
                } else {
                    q12.j(builderForValue.build());
                }
                this.f108572b |= 8;
                onChanged();
                return this;
            }

            public C1976b W6(f value) {
                Q1<f, f.b, g> q12 = this.f108578h;
                if (q12 == null) {
                    value.getClass();
                    this.f108577g = value;
                } else {
                    q12.j(value);
                }
                this.f108572b |= 8;
                onChanged();
                return this;
            }

            public C1976b X6(int index, String value) {
                value.getClass();
                F6();
                this.f108573c.set(index, value);
                this.f108572b |= 1;
                onChanged();
                return this;
            }

            public C1976b Y6(String value) {
                value.getClass();
                this.f108574d = value;
                this.f108572b |= 2;
                onChanged();
                return this;
            }

            @Override
            public H.r Z1(int index) {
                G1<H.r, H.r.b, H.s> g12 = this.f108576f;
                return g12 == null ? this.f108575e.get(index) : g12.o(index);
            }

            public C1976b Z6(AbstractC12724x value) {
                value.getClass();
                this.f108574d = value;
                this.f108572b |= 2;
                onChanged();
                return this;
            }

            public C1976b a5(AbstractC12724x value) {
                value.getClass();
                F6();
                this.f108573c.b3(value);
                this.f108572b |= 1;
                onChanged();
                return this;
            }

            public C1976b a7(int index, H.r.b builderForValue) {
                G1<H.r, H.r.b, H.s> g12 = this.f108576f;
                if (g12 == null) {
                    G6();
                    this.f108575e.set(index, builderForValue.build());
                    onChanged();
                } else {
                    g12.x(index, builderForValue.build());
                }
                return this;
            }

            public C1976b b7(int index, H.r value) {
                G1<H.r, H.r.b, H.s> g12 = this.f108576f;
                if (g12 == null) {
                    value.getClass();
                    G6();
                    this.f108575e.set(index, value);
                    onChanged();
                } else {
                    g12.x(index, value);
                }
                return this;
            }

            @Override
            public final C1976b setUnknownFields(final r2 unknownFields) {
                return (C1976b) super.setUnknownFields(unknownFields);
            }

            @Override
            public g f3() {
                Q1<f, f.b, g> q12 = this.f108578h;
                if (q12 != null) {
                    return q12.g();
                }
                f fVar = this.f108577g;
                return fVar == null ? f.z6() : fVar;
            }

            @Override
            public f getCompilerVersion() {
                Q1<f, f.b, g> q12 = this.f108578h;
                if (q12 != null) {
                    return q12.f();
                }
                f fVar = this.f108577g;
                return fVar == null ? f.z6() : fVar;
            }

            @Override
            public Descriptors.b getDescriptorForType() {
                return C15146a.f108552c;
            }

            @Override
            public String getParameter() {
                Object obj = this.f108574d;
                if (obj instanceof String) {
                    return (String) obj;
                }
                AbstractC12724x abstractC12724x = (AbstractC12724x) obj;
                String g02 = abstractC12724x.g0();
                if (abstractC12724x.J()) {
                    this.f108574d = g02;
                }
                return g02;
            }

            @Override
            public AbstractC12722w0.h internalGetFieldAccessorTable() {
                return C15146a.f108553d.d(b.class, C1976b.class);
            }

            @Override
            public final boolean isInitialized() {
                for (int i10 = 0; i10 < o4(); i10++) {
                    if (!Z1(i10).isInitialized()) {
                        return false;
                    }
                }
                return true;
            }

            @Override
            public List<? extends H.s> l3() {
                G1<H.r, H.r.b, H.s> g12 = this.f108576f;
                return g12 != null ? g12.s() : Collections.unmodifiableList(this.f108575e);
            }

            @Override
            public AbstractC12724x l4(int index) {
                return this.f108573c.ub(index);
            }

            public C1976b m1(Iterable<String> values) {
                F6();
                AbstractC12657b.a.addAll((Iterable) values, (List) this.f108573c);
                this.f108572b |= 1;
                onChanged();
                return this;
            }

            @Override
            public boolean o1() {
                return (this.f108572b & 2) != 0;
            }

            @Override
            public int o4() {
                G1<H.r, H.r.b, H.s> g12 = this.f108576f;
                return g12 == null ? this.f108575e.size() : g12.n();
            }

            @Override
            public boolean p2() {
                return (this.f108572b & 8) != 0;
            }

            public C1976b q6(int index, H.r.b builderForValue) {
                G1<H.r, H.r.b, H.s> g12 = this.f108576f;
                if (g12 == null) {
                    G6();
                    this.f108575e.add(index, builderForValue.build());
                    onChanged();
                } else {
                    g12.e(index, builderForValue.build());
                }
                return this;
            }

            public C1976b r6(int index, H.r value) {
                G1<H.r, H.r.b, H.s> g12 = this.f108576f;
                if (g12 == null) {
                    value.getClass();
                    G6();
                    this.f108575e.add(index, value);
                    onChanged();
                } else {
                    g12.e(index, value);
                }
                return this;
            }

            public C1976b s6(H.r.b builderForValue) {
                G1<H.r, H.r.b, H.s> g12 = this.f108576f;
                if (g12 == null) {
                    G6();
                    this.f108575e.add(builderForValue.build());
                    onChanged();
                } else {
                    g12.f(builderForValue.build());
                }
                return this;
            }

            @Override
            public AbstractC12724x t5() {
                Object obj = this.f108574d;
                if (!(obj instanceof String)) {
                    return (AbstractC12724x) obj;
                }
                AbstractC12724x w10 = AbstractC12724x.w((String) obj);
                this.f108574d = w10;
                return w10;
            }

            public C1976b t6(H.r value) {
                G1<H.r, H.r.b, H.s> g12 = this.f108576f;
                if (g12 == null) {
                    value.getClass();
                    G6();
                    this.f108575e.add(value);
                    onChanged();
                } else {
                    g12.f(value);
                }
                return this;
            }

            @Override
            public String u5(int index) {
                return this.f108573c.get(index);
            }

            public H.r.b u6() {
                return N6().d(H.r.S6());
            }

            public C1976b v3(String value) {
                value.getClass();
                F6();
                this.f108573c.add(value);
                this.f108572b |= 1;
                onChanged();
                return this;
            }

            public H.r.b v6(int index) {
                return N6().c(index, H.r.S6());
            }

            @Override
            public b build() {
                b buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractC12653a.AbstractC1035a.newUninitializedMessageException((Y0) buildPartial);
            }

            @Override
            public b buildPartial() {
                b bVar = new b(this);
                z6(bVar);
                if (this.f108572b != 0) {
                    y6(bVar);
                }
                onBuilt();
                return bVar;
            }

            public final void y6(b result) {
                int i10;
                int i11 = this.f108572b;
                if ((i11 & 1) != 0) {
                    this.f108573c.r9();
                    result.f108567c = this.f108573c;
                }
                if ((i11 & 2) != 0) {
                    result.f108568d = this.f108574d;
                    i10 = 1;
                } else {
                    i10 = 0;
                }
                if ((i11 & 8) != 0) {
                    Q1<f, f.b, g> q12 = this.f108578h;
                    result.f108570f = q12 == null ? this.f108577g : q12.b();
                    i10 |= 2;
                }
                b.B6(result, i10);
            }

            public final void z6(b result) {
                G1<H.r, H.r.b, H.s> g12 = this.f108576f;
                if (g12 != null) {
                    result.f108569e = g12.g();
                    return;
                }
                if ((this.f108572b & 4) != 0) {
                    this.f108575e = Collections.unmodifiableList(this.f108575e);
                    this.f108572b &= -5;
                }
                result.f108569e = this.f108575e;
            }

            public C1976b() {
                this.f108573c = J0.n();
                this.f108574d = "";
                this.f108575e = Collections.emptyList();
                O6();
            }

            public C1976b(AbstractC12722w0.c parent) {
                super(parent);
                this.f108573c = J0.n();
                this.f108574d = "";
                this.f108575e = Collections.emptyList();
                O6();
            }
        }

        public b(AbstractC12722w0.b<?> builder) {
            super(builder);
            this.f108567c = J0.n();
            this.f108568d = "";
            this.f108571g = (byte) -1;
        }

        public b() {
            this.f108567c = J0.n();
            this.f108568d = "";
            this.f108571g = (byte) -1;
            this.f108567c = J0.n();
            this.f108568d = "";
            this.f108569e = Collections.emptyList();
        }
    }

    public interface c extends InterfaceC12670e1 {
        List<H.r> J1();

        H.s P0(int index);

        int Q2();

        List<String> X1();

        H.r Z1(int index);

        g f3();

        f getCompilerVersion();

        String getParameter();

        List<? extends H.s> l3();

        AbstractC12724x l4(int index);

        boolean o1();

        int o4();

        boolean p2();

        AbstractC12724x t5();

        String u5(int index);
    }

    public static final class d extends AbstractC12722w0 implements e {

        public static final long f108579g = 0;

        public static final int f108580h = 1;

        public static final int f108581i = 2;

        public static final int f108582j = 15;

        public static final d f108583k = new d();

        @Deprecated
        public static final InterfaceC12723w1<d> f108584l = new C1977a();

        public int f108585b;

        public volatile Object f108586c;

        public long f108587d;

        public List<C1979d> f108588e;

        public byte f108589f;

        public class C1977a extends AbstractC12661c<d> {
            @Override
            public d parsePartialFrom(C input, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
                b C62 = d.C6();
                try {
                    C62.mergeFrom(input, extensionRegistry);
                    return C62.buildPartial();
                } catch (InvalidProtocolBufferException e10) {
                    throw e10.setUnfinishedMessage(C62.buildPartial());
                } catch (UninitializedMessageException e11) {
                    throw e11.asInvalidProtocolBufferException().setUnfinishedMessage(C62.buildPartial());
                } catch (IOException e12) {
                    throw new InvalidProtocolBufferException(e12).setUnfinishedMessage(C62.buildPartial());
                }
            }
        }

        public enum c implements B1 {
            FEATURE_NONE(0),
            FEATURE_PROTO3_OPTIONAL(1);

            public static final int FEATURE_NONE_VALUE = 0;
            public static final int FEATURE_PROTO3_OPTIONAL_VALUE = 1;
            private final int value;
            private static final D0.d<c> internalValueMap = new C1978a();
            private static final c[] VALUES = values();

            public class C1978a implements D0.d<c> {
                @Override
                public c findValueByNumber(int number) {
                    return c.a(number);
                }
            }

            c(int value) {
                this.value = value;
            }

            public static c a(int value) {
                if (value == 0) {
                    return FEATURE_NONE;
                }
                if (value != 1) {
                    return null;
                }
                return FEATURE_PROTO3_OPTIONAL;
            }

            public static final Descriptors.d b() {
                return d.getDescriptor().q().get(0);
            }

            public static D0.d<c> c() {
                return internalValueMap;
            }

            @Deprecated
            public static c e(int value) {
                return a(value);
            }

            public static c g(Descriptors.e desc) {
                if (desc.i() == b()) {
                    return VALUES[desc.g()];
                }
                throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
            }

            @Override
            public final Descriptors.d getDescriptorForType() {
                return b();
            }

            @Override
            public final int getNumber() {
                return this.value;
            }

            @Override
            public final Descriptors.e getValueDescriptor() {
                return b().t().get(ordinal());
            }
        }

        public static final class C1979d extends AbstractC12722w0 implements e {

            public static final long f108595h = 0;

            public static final int f108596i = 1;

            public static final int f108597j = 2;

            public static final int f108598k = 15;

            public static final int f108599l = 16;

            public static final C1979d f108600m = new C1979d();

            @Deprecated
            public static final InterfaceC12723w1<C1979d> f108601n = new C1980a();

            public int f108602b;

            public volatile Object f108603c;

            public volatile Object f108604d;

            public volatile Object f108605e;

            public H.x f108606f;

            public byte f108607g;

            public class C1980a extends AbstractC12661c<C1979d> {
                @Override
                public C1979d parsePartialFrom(C input, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
                    b E62 = C1979d.E6();
                    try {
                        E62.mergeFrom(input, extensionRegistry);
                        return E62.buildPartial();
                    } catch (InvalidProtocolBufferException e10) {
                        throw e10.setUnfinishedMessage(E62.buildPartial());
                    } catch (UninitializedMessageException e11) {
                        throw e11.asInvalidProtocolBufferException().setUnfinishedMessage(E62.buildPartial());
                    } catch (IOException e12) {
                        throw new InvalidProtocolBufferException(e12).setUnfinishedMessage(E62.buildPartial());
                    }
                }
            }

            public static int B6(C1979d c1979d, int i10) {
                int i11 = i10 | c1979d.f108602b;
                c1979d.f108602b = i11;
                return i11;
            }

            public static C1979d C6() {
                return f108600m;
            }

            public static b E6() {
                return f108600m.toBuilder();
            }

            public static b F6(C1979d prototype) {
                return f108600m.toBuilder().A6(prototype);
            }

            public static C1979d I6(InputStream input) throws IOException {
                return (C1979d) AbstractC12722w0.parseDelimitedWithIOException(f108601n, input);
            }

            public static C1979d J6(InputStream input, C12666d0 extensionRegistry) throws IOException {
                return (C1979d) AbstractC12722w0.parseDelimitedWithIOException(f108601n, input, extensionRegistry);
            }

            public static C1979d K6(AbstractC12724x data) throws InvalidProtocolBufferException {
                return f108601n.parseFrom(data);
            }

            public static C1979d L6(AbstractC12724x data, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
                return f108601n.parseFrom(data, extensionRegistry);
            }

            public static C1979d M6(C input) throws IOException {
                return (C1979d) AbstractC12722w0.parseWithIOException(f108601n, input);
            }

            public static C1979d N6(C input, C12666d0 extensionRegistry) throws IOException {
                return (C1979d) AbstractC12722w0.parseWithIOException(f108601n, input, extensionRegistry);
            }

            public static C1979d O6(InputStream input) throws IOException {
                return (C1979d) AbstractC12722w0.parseWithIOException(f108601n, input);
            }

            public static C1979d P6(InputStream input, C12666d0 extensionRegistry) throws IOException {
                return (C1979d) AbstractC12722w0.parseWithIOException(f108601n, input, extensionRegistry);
            }

            public static C1979d Q6(ByteBuffer data) throws InvalidProtocolBufferException {
                return f108601n.parseFrom(data);
            }

            public static C1979d R6(ByteBuffer data, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
                return f108601n.parseFrom(data, extensionRegistry);
            }

            public static C1979d S6(byte[] data) throws InvalidProtocolBufferException {
                return f108601n.parseFrom(data);
            }

            public static C1979d T6(byte[] data, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
                return f108601n.parseFrom(data, extensionRegistry);
            }

            public static final Descriptors.b getDescriptor() {
                return C15146a.f108556g;
            }

            public static InterfaceC12723w1<C1979d> parser() {
                return f108601n;
            }

            @Override
            public H.y B0() {
                H.x xVar = this.f108606f;
                return xVar == null ? H.x.v6() : xVar;
            }

            @Override
            public String B4() {
                Object obj = this.f108604d;
                if (obj instanceof String) {
                    return (String) obj;
                }
                AbstractC12724x abstractC12724x = (AbstractC12724x) obj;
                String g02 = abstractC12724x.g0();
                if (abstractC12724x.J()) {
                    this.f108604d = g02;
                }
                return g02;
            }

            @Override
            public AbstractC12724x C4() {
                Object obj = this.f108604d;
                if (!(obj instanceof String)) {
                    return (AbstractC12724x) obj;
                }
                AbstractC12724x w10 = AbstractC12724x.w((String) obj);
                this.f108604d = w10;
                return w10;
            }

            @Override
            public C1979d getDefaultInstanceForType() {
                return f108600m;
            }

            @Override
            public b newBuilderForType() {
                return E6();
            }

            @Override
            public b newBuilderForType(AbstractC12722w0.c parent) {
                return new b(parent);
            }

            @Override
            public boolean M2() {
                return (this.f108602b & 2) != 0;
            }

            @Override
            public boolean U5() {
                return (this.f108602b & 4) != 0;
            }

            @Override
            public b toBuilder() {
                return this == f108600m ? new b() : new b().A6(this);
            }

            @Override
            public H.x a2() {
                H.x xVar = this.f108606f;
                return xVar == null ? H.x.v6() : xVar;
            }

            @Override
            public boolean equals(final Object obj) {
                if (obj == this) {
                    return true;
                }
                if (!(obj instanceof C1979d)) {
                    return super.equals(obj);
                }
                C1979d c1979d = (C1979d) obj;
                if (hasName() != c1979d.hasName()) {
                    return false;
                }
                if ((hasName() && !getName().equals(c1979d.getName())) || M2() != c1979d.M2()) {
                    return false;
                }
                if ((M2() && !B4().equals(c1979d.B4())) || U5() != c1979d.U5()) {
                    return false;
                }
                if ((!U5() || getContent().equals(c1979d.getContent())) && w4() == c1979d.w4()) {
                    return (!w4() || a2().equals(c1979d.a2())) && getUnknownFields().equals(c1979d.getUnknownFields());
                }
                return false;
            }

            @Override
            public String getContent() {
                Object obj = this.f108605e;
                if (obj instanceof String) {
                    return (String) obj;
                }
                AbstractC12724x abstractC12724x = (AbstractC12724x) obj;
                String g02 = abstractC12724x.g0();
                if (abstractC12724x.J()) {
                    this.f108605e = g02;
                }
                return g02;
            }

            @Override
            public String getName() {
                Object obj = this.f108603c;
                if (obj instanceof String) {
                    return (String) obj;
                }
                AbstractC12724x abstractC12724x = (AbstractC12724x) obj;
                String g02 = abstractC12724x.g0();
                if (abstractC12724x.J()) {
                    this.f108603c = g02;
                }
                return g02;
            }

            @Override
            public AbstractC12724x getNameBytes() {
                Object obj = this.f108603c;
                if (!(obj instanceof String)) {
                    return (AbstractC12724x) obj;
                }
                AbstractC12724x w10 = AbstractC12724x.w((String) obj);
                this.f108603c = w10;
                return w10;
            }

            @Override
            public InterfaceC12723w1<C1979d> getParserForType() {
                return f108601n;
            }

            @Override
            public int getSerializedSize() {
                int i10 = this.memoizedSize;
                if (i10 != -1) {
                    return i10;
                }
                int computeStringSize = (this.f108602b & 1) != 0 ? AbstractC12722w0.computeStringSize(1, this.f108603c) : 0;
                if ((this.f108602b & 2) != 0) {
                    computeStringSize += AbstractC12722w0.computeStringSize(2, this.f108604d);
                }
                if ((this.f108602b & 4) != 0) {
                    computeStringSize += AbstractC12722w0.computeStringSize(15, this.f108605e);
                }
                if ((this.f108602b & 8) != 0) {
                    computeStringSize += CodedOutputStream.F0(16, a2());
                }
                int serializedSize = computeStringSize + getUnknownFields().getSerializedSize();
                this.memoizedSize = serializedSize;
                return serializedSize;
            }

            @Override
            public AbstractC12724x h6() {
                Object obj = this.f108605e;
                if (!(obj instanceof String)) {
                    return (AbstractC12724x) obj;
                }
                AbstractC12724x w10 = AbstractC12724x.w((String) obj);
                this.f108605e = w10;
                return w10;
            }

            @Override
            public boolean hasName() {
                return (this.f108602b & 1) != 0;
            }

            @Override
            public int hashCode() {
                int i10 = this.memoizedHashCode;
                if (i10 != 0) {
                    return i10;
                }
                int hashCode = 779 + getDescriptor().hashCode();
                if (hasName()) {
                    hashCode = (((hashCode * 37) + 1) * 53) + getName().hashCode();
                }
                if (M2()) {
                    hashCode = (((hashCode * 37) + 2) * 53) + B4().hashCode();
                }
                if (U5()) {
                    hashCode = (((hashCode * 37) + 15) * 53) + getContent().hashCode();
                }
                if (w4()) {
                    hashCode = (((hashCode * 37) + 16) * 53) + a2().hashCode();
                }
                int hashCode2 = (hashCode * 29) + getUnknownFields().hashCode();
                this.memoizedHashCode = hashCode2;
                return hashCode2;
            }

            @Override
            public AbstractC12722w0.h internalGetFieldAccessorTable() {
                return C15146a.f108557h.d(C1979d.class, b.class);
            }

            @Override
            public final boolean isInitialized() {
                byte b10 = this.f108607g;
                if (b10 == 1) {
                    return true;
                }
                if (b10 == 0) {
                    return false;
                }
                this.f108607g = (byte) 1;
                return true;
            }

            @Override
            public Object newInstance(AbstractC12722w0.i unused) {
                return new C1979d();
            }

            @Override
            public boolean w4() {
                return (this.f108602b & 8) != 0;
            }

            @Override
            public void writeTo(CodedOutputStream output) throws IOException {
                if ((this.f108602b & 1) != 0) {
                    AbstractC12722w0.writeString(output, 1, this.f108603c);
                }
                if ((this.f108602b & 2) != 0) {
                    AbstractC12722w0.writeString(output, 2, this.f108604d);
                }
                if ((this.f108602b & 4) != 0) {
                    AbstractC12722w0.writeString(output, 15, this.f108605e);
                }
                if ((this.f108602b & 8) != 0) {
                    output.L1(16, a2());
                }
                getUnknownFields().writeTo(output);
            }

            public static final class b extends AbstractC12722w0.b<b> implements e {

                public int f108608b;

                public Object f108609c;

                public Object f108610d;

                public Object f108611e;

                public H.x f108612f;

                public Q1<H.x, H.x.d, H.y> f108613g;

                public static final Descriptors.b getDescriptor() {
                    return C15146a.f108556g;
                }

                private void x6() {
                    if (AbstractC12722w0.alwaysUseFieldBuilders) {
                        w6();
                    }
                }

                public b A6(C1979d other) {
                    if (other == C1979d.C6()) {
                        return this;
                    }
                    if (other.hasName()) {
                        this.f108609c = other.f108603c;
                        this.f108608b |= 1;
                        onChanged();
                    }
                    if (other.M2()) {
                        this.f108610d = other.f108604d;
                        this.f108608b |= 2;
                        onChanged();
                    }
                    if (other.U5()) {
                        this.f108611e = other.f108605e;
                        this.f108608b |= 4;
                        onChanged();
                    }
                    if (other.w4()) {
                        B6(other.a2());
                    }
                    mergeUnknownFields(other.getUnknownFields());
                    onChanged();
                    return this;
                }

                @Override
                public H.y B0() {
                    Q1<H.x, H.x.d, H.y> q12 = this.f108613g;
                    if (q12 != null) {
                        return q12.g();
                    }
                    H.x xVar = this.f108612f;
                    return xVar == null ? H.x.v6() : xVar;
                }

                @Override
                public String B4() {
                    Object obj = this.f108610d;
                    if (obj instanceof String) {
                        return (String) obj;
                    }
                    AbstractC12724x abstractC12724x = (AbstractC12724x) obj;
                    String g02 = abstractC12724x.g0();
                    if (abstractC12724x.J()) {
                        this.f108610d = g02;
                    }
                    return g02;
                }

                public b B6(H.x value) {
                    H.x xVar;
                    Q1<H.x, H.x.d, H.y> q12 = this.f108613g;
                    if (q12 != null) {
                        q12.h(value);
                    } else if ((this.f108608b & 8) == 0 || (xVar = this.f108612f) == null || xVar == H.x.v6()) {
                        this.f108612f = value;
                    } else {
                        v6().F6(value);
                    }
                    this.f108608b |= 8;
                    onChanged();
                    return this;
                }

                @Override
                public AbstractC12724x C4() {
                    Object obj = this.f108610d;
                    if (!(obj instanceof String)) {
                        return (AbstractC12724x) obj;
                    }
                    AbstractC12724x w10 = AbstractC12724x.w((String) obj);
                    this.f108610d = w10;
                    return w10;
                }

                @Override
                public final b mergeUnknownFields(final r2 unknownFields) {
                    return (b) super.mergeUnknownFields(unknownFields);
                }

                public b D6(String value) {
                    value.getClass();
                    this.f108611e = value;
                    this.f108608b |= 4;
                    onChanged();
                    return this;
                }

                public b E6(AbstractC12724x value) {
                    value.getClass();
                    this.f108611e = value;
                    this.f108608b |= 4;
                    onChanged();
                    return this;
                }

                public b F6(H.x.d builderForValue) {
                    Q1<H.x, H.x.d, H.y> q12 = this.f108613g;
                    if (q12 == null) {
                        this.f108612f = builderForValue.build();
                    } else {
                        q12.j(builderForValue.build());
                    }
                    this.f108608b |= 8;
                    onChanged();
                    return this;
                }

                public b G6(H.x value) {
                    Q1<H.x, H.x.d, H.y> q12 = this.f108613g;
                    if (q12 == null) {
                        value.getClass();
                        this.f108612f = value;
                    } else {
                        q12.j(value);
                    }
                    this.f108608b |= 8;
                    onChanged();
                    return this;
                }

                public b H6(String value) {
                    value.getClass();
                    this.f108610d = value;
                    this.f108608b |= 2;
                    onChanged();
                    return this;
                }

                @Override
                public C1979d buildPartial() {
                    C1979d c1979d = new C1979d(this);
                    if (this.f108608b != 0) {
                        v3(c1979d);
                    }
                    onBuilt();
                    return c1979d;
                }

                public b I6(AbstractC12724x value) {
                    value.getClass();
                    this.f108610d = value;
                    this.f108608b |= 2;
                    onChanged();
                    return this;
                }

                public b J6(String value) {
                    value.getClass();
                    this.f108609c = value;
                    this.f108608b |= 1;
                    onChanged();
                    return this;
                }

                public b K6(AbstractC12724x value) {
                    value.getClass();
                    this.f108609c = value;
                    this.f108608b |= 1;
                    onChanged();
                    return this;
                }

                @Override
                public final b setUnknownFields(final r2 unknownFields) {
                    return (b) super.setUnknownFields(unknownFields);
                }

                @Override
                public boolean M2() {
                    return (this.f108608b & 2) != 0;
                }

                @Override
                public boolean U5() {
                    return (this.f108608b & 4) != 0;
                }

                @Override
                public H.x a2() {
                    Q1<H.x, H.x.d, H.y> q12 = this.f108613g;
                    if (q12 != null) {
                        return q12.f();
                    }
                    H.x xVar = this.f108612f;
                    return xVar == null ? H.x.v6() : xVar;
                }

                @Override
                public b s6() {
                    super.s6();
                    this.f108608b = 0;
                    this.f108609c = "";
                    this.f108610d = "";
                    this.f108611e = "";
                    this.f108612f = null;
                    Q1<H.x, H.x.d, H.y> q12 = this.f108613g;
                    if (q12 != null) {
                        q12.d();
                        this.f108613g = null;
                    }
                    return this;
                }

                @Override
                public String getContent() {
                    Object obj = this.f108611e;
                    if (obj instanceof String) {
                        return (String) obj;
                    }
                    AbstractC12724x abstractC12724x = (AbstractC12724x) obj;
                    String g02 = abstractC12724x.g0();
                    if (abstractC12724x.J()) {
                        this.f108611e = g02;
                    }
                    return g02;
                }

                @Override
                public Descriptors.b getDescriptorForType() {
                    return C15146a.f108556g;
                }

                @Override
                public String getName() {
                    Object obj = this.f108609c;
                    if (obj instanceof String) {
                        return (String) obj;
                    }
                    AbstractC12724x abstractC12724x = (AbstractC12724x) obj;
                    String g02 = abstractC12724x.g0();
                    if (abstractC12724x.J()) {
                        this.f108609c = g02;
                    }
                    return g02;
                }

                @Override
                public AbstractC12724x getNameBytes() {
                    Object obj = this.f108609c;
                    if (!(obj instanceof String)) {
                        return (AbstractC12724x) obj;
                    }
                    AbstractC12724x w10 = AbstractC12724x.w((String) obj);
                    this.f108609c = w10;
                    return w10;
                }

                @Override
                public AbstractC12724x h6() {
                    Object obj = this.f108611e;
                    if (!(obj instanceof String)) {
                        return (AbstractC12724x) obj;
                    }
                    AbstractC12724x w10 = AbstractC12724x.w((String) obj);
                    this.f108611e = w10;
                    return w10;
                }

                @Override
                public boolean hasName() {
                    return (this.f108608b & 1) != 0;
                }

                @Override
                public AbstractC12722w0.h internalGetFieldAccessorTable() {
                    return C15146a.f108557h.d(C1979d.class, b.class);
                }

                @Override
                public final boolean isInitialized() {
                    return true;
                }

                @Override
                public C1979d build() {
                    C1979d buildPartial = buildPartial();
                    if (buildPartial.isInitialized()) {
                        return buildPartial;
                    }
                    throw AbstractC12653a.AbstractC1035a.newUninitializedMessageException((Y0) buildPartial);
                }

                public b q6() {
                    this.f108611e = C1979d.C6().getContent();
                    this.f108608b &= -5;
                    onChanged();
                    return this;
                }

                public b r6() {
                    this.f108608b &= -9;
                    this.f108612f = null;
                    Q1<H.x, H.x.d, H.y> q12 = this.f108613g;
                    if (q12 != null) {
                        q12.d();
                        this.f108613g = null;
                    }
                    onChanged();
                    return this;
                }

                public b s6() {
                    this.f108610d = C1979d.C6().B4();
                    this.f108608b &= -3;
                    onChanged();
                    return this;
                }

                public b t6() {
                    this.f108609c = C1979d.C6().getName();
                    this.f108608b &= -2;
                    onChanged();
                    return this;
                }

                @Override
                public C1979d getDefaultInstanceForType() {
                    return C1979d.C6();
                }

                public final void v3(C1979d result) {
                    int i10;
                    int i11 = this.f108608b;
                    if ((i11 & 1) != 0) {
                        result.f108603c = this.f108609c;
                        i10 = 1;
                    } else {
                        i10 = 0;
                    }
                    if ((i11 & 2) != 0) {
                        result.f108604d = this.f108610d;
                        i10 |= 2;
                    }
                    if ((i11 & 4) != 0) {
                        result.f108605e = this.f108611e;
                        i10 |= 4;
                    }
                    if ((i11 & 8) != 0) {
                        Q1<H.x, H.x.d, H.y> q12 = this.f108613g;
                        result.f108606f = q12 == null ? this.f108612f : q12.b();
                        i10 |= 8;
                    }
                    C1979d.B6(result, i10);
                }

                public H.x.d v6() {
                    this.f108608b |= 8;
                    onChanged();
                    return w6().e();
                }

                @Override
                public boolean w4() {
                    return (this.f108608b & 8) != 0;
                }

                public final Q1<H.x, H.x.d, H.y> w6() {
                    if (this.f108613g == null) {
                        this.f108613g = new Q1<>(a2(), getParentForChildren(), isClean());
                        this.f108612f = null;
                    }
                    return this.f108613g;
                }

                @Override
                public b mergeFrom(C input, C12666d0 extensionRegistry) throws IOException {
                    extensionRegistry.getClass();
                    boolean z10 = false;
                    while (!z10) {
                        try {
                            try {
                                int Z10 = input.Z();
                                if (Z10 != 0) {
                                    if (Z10 == 10) {
                                        this.f108609c = input.y();
                                        this.f108608b |= 1;
                                    } else if (Z10 == 18) {
                                        this.f108610d = input.y();
                                        this.f108608b |= 2;
                                    } else if (Z10 == 122) {
                                        this.f108611e = input.y();
                                        this.f108608b |= 4;
                                    } else if (Z10 == 130) {
                                        input.J(w6().e(), extensionRegistry);
                                        this.f108608b |= 8;
                                    } else if (!super.parseUnknownField(input, extensionRegistry, Z10)) {
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
                public b mergeFrom(Y0 other) {
                    if (other instanceof C1979d) {
                        return A6((C1979d) other);
                    }
                    super.mergeFrom(other);
                    return this;
                }

                public b() {
                    this.f108609c = "";
                    this.f108610d = "";
                    this.f108611e = "";
                    x6();
                }

                public b(AbstractC12722w0.c parent) {
                    super(parent);
                    this.f108609c = "";
                    this.f108610d = "";
                    this.f108611e = "";
                    x6();
                }
            }

            public C1979d(AbstractC12722w0.b<?> builder) {
                super(builder);
                this.f108603c = "";
                this.f108604d = "";
                this.f108605e = "";
                this.f108607g = (byte) -1;
            }

            public C1979d() {
                this.f108603c = "";
                this.f108604d = "";
                this.f108605e = "";
                this.f108607g = (byte) -1;
                this.f108603c = "";
                this.f108604d = "";
                this.f108605e = "";
            }
        }

        public interface e extends InterfaceC12670e1 {
            H.y B0();

            String B4();

            AbstractC12724x C4();

            boolean M2();

            boolean U5();

            H.x a2();

            String getContent();

            String getName();

            AbstractC12724x getNameBytes();

            AbstractC12724x h6();

            boolean hasName();

            boolean w4();
        }

        public static d A6() {
            return f108583k;
        }

        public static b C6() {
            return f108583k.toBuilder();
        }

        public static b D6(d prototype) {
            return f108583k.toBuilder().I6(prototype);
        }

        public static d G6(InputStream input) throws IOException {
            return (d) AbstractC12722w0.parseDelimitedWithIOException(f108584l, input);
        }

        public static d H6(InputStream input, C12666d0 extensionRegistry) throws IOException {
            return (d) AbstractC12722w0.parseDelimitedWithIOException(f108584l, input, extensionRegistry);
        }

        public static d I6(AbstractC12724x data) throws InvalidProtocolBufferException {
            return f108584l.parseFrom(data);
        }

        public static d J6(AbstractC12724x data, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
            return f108584l.parseFrom(data, extensionRegistry);
        }

        public static d K6(C input) throws IOException {
            return (d) AbstractC12722w0.parseWithIOException(f108584l, input);
        }

        public static d L6(C input, C12666d0 extensionRegistry) throws IOException {
            return (d) AbstractC12722w0.parseWithIOException(f108584l, input, extensionRegistry);
        }

        public static d M6(InputStream input) throws IOException {
            return (d) AbstractC12722w0.parseWithIOException(f108584l, input);
        }

        public static d N6(InputStream input, C12666d0 extensionRegistry) throws IOException {
            return (d) AbstractC12722w0.parseWithIOException(f108584l, input, extensionRegistry);
        }

        public static d O6(ByteBuffer data) throws InvalidProtocolBufferException {
            return f108584l.parseFrom(data);
        }

        public static d P6(ByteBuffer data, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
            return f108584l.parseFrom(data, extensionRegistry);
        }

        public static d Q6(byte[] data) throws InvalidProtocolBufferException {
            return f108584l.parseFrom(data);
        }

        public static d R6(byte[] data, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
            return f108584l.parseFrom(data, extensionRegistry);
        }

        public static final Descriptors.b getDescriptor() {
            return C15146a.f108554e;
        }

        public static InterfaceC12723w1<d> parser() {
            return f108584l;
        }

        public static int y6(d dVar, int i10) {
            int i11 = i10 | dVar.f108585b;
            dVar.f108585b = i11;
            return i11;
        }

        @Override
        public List<? extends e> A() {
            return this.f108588e;
        }

        @Override
        public d getDefaultInstanceForType() {
            return f108583k;
        }

        @Override
        public b newBuilderForType() {
            return C6();
        }

        @Override
        public b newBuilderForType(AbstractC12722w0.c parent) {
            return new b(parent);
        }

        @Override
        public AbstractC12724x J4() {
            Object obj = this.f108586c;
            if (!(obj instanceof String)) {
                return (AbstractC12724x) obj;
            }
            AbstractC12724x w10 = AbstractC12724x.w((String) obj);
            this.f108586c = w10;
            return w10;
        }

        @Override
        public b toBuilder() {
            return this == f108583k ? new b() : new b().I6(this);
        }

        @Override
        public int U() {
            return this.f108588e.size();
        }

        @Override
        public C1979d V(int index) {
            return this.f108588e.get(index);
        }

        @Override
        public boolean a1() {
            return (this.f108585b & 2) != 0;
        }

        @Override
        public boolean equals(final Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof d)) {
                return super.equals(obj);
            }
            d dVar = (d) obj;
            if (s4() != dVar.s4()) {
                return false;
            }
            if ((!s4() || getError().equals(dVar.getError())) && a1() == dVar.a1()) {
                return (!a1() || h5() == dVar.h5()) && n0().equals(dVar.n0()) && getUnknownFields().equals(dVar.getUnknownFields());
            }
            return false;
        }

        @Override
        public String getError() {
            Object obj = this.f108586c;
            if (obj instanceof String) {
                return (String) obj;
            }
            AbstractC12724x abstractC12724x = (AbstractC12724x) obj;
            String g02 = abstractC12724x.g0();
            if (abstractC12724x.J()) {
                this.f108586c = g02;
            }
            return g02;
        }

        @Override
        public InterfaceC12723w1<d> getParserForType() {
            return f108584l;
        }

        @Override
        public int getSerializedSize() {
            int i10 = this.memoizedSize;
            if (i10 != -1) {
                return i10;
            }
            int computeStringSize = (this.f108585b & 1) != 0 ? AbstractC12722w0.computeStringSize(1, this.f108586c) : 0;
            if ((this.f108585b & 2) != 0) {
                computeStringSize += CodedOutputStream.a1(2, this.f108587d);
            }
            for (int i11 = 0; i11 < this.f108588e.size(); i11++) {
                computeStringSize += CodedOutputStream.F0(15, this.f108588e.get(i11));
            }
            int serializedSize = computeStringSize + getUnknownFields().getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override
        public long h5() {
            return this.f108587d;
        }

        @Override
        public int hashCode() {
            int i10 = this.memoizedHashCode;
            if (i10 != 0) {
                return i10;
            }
            int hashCode = 779 + getDescriptor().hashCode();
            if (s4()) {
                hashCode = (((hashCode * 37) + 1) * 53) + getError().hashCode();
            }
            if (a1()) {
                hashCode = (((hashCode * 37) + 2) * 53) + D0.s(h5());
            }
            if (U() > 0) {
                hashCode = (((hashCode * 37) + 15) * 53) + n0().hashCode();
            }
            int hashCode2 = (hashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override
        public AbstractC12722w0.h internalGetFieldAccessorTable() {
            return C15146a.f108555f.d(d.class, b.class);
        }

        @Override
        public final boolean isInitialized() {
            byte b10 = this.f108589f;
            if (b10 == 1) {
                return true;
            }
            if (b10 == 0) {
                return false;
            }
            this.f108589f = (byte) 1;
            return true;
        }

        @Override
        public List<C1979d> n0() {
            return this.f108588e;
        }

        @Override
        public Object newInstance(AbstractC12722w0.i unused) {
            return new d();
        }

        @Override
        public e q0(int index) {
            return this.f108588e.get(index);
        }

        @Override
        public boolean s4() {
            return (this.f108585b & 1) != 0;
        }

        @Override
        public void writeTo(CodedOutputStream output) throws IOException {
            if ((this.f108585b & 1) != 0) {
                AbstractC12722w0.writeString(output, 1, this.f108586c);
            }
            if ((this.f108585b & 2) != 0) {
                output.f(2, this.f108587d);
            }
            for (int i10 = 0; i10 < this.f108588e.size(); i10++) {
                output.L1(15, this.f108588e.get(i10));
            }
            getUnknownFields().writeTo(output);
        }

        public static final class b extends AbstractC12722w0.b<b> implements e {

            public int f108590b;

            public Object f108591c;

            public long f108592d;

            public List<C1979d> f108593e;

            public G1<C1979d, C1979d.b, e> f108594f;

            private void B6() {
                if ((this.f108590b & 4) == 0) {
                    this.f108593e = new ArrayList(this.f108593e);
                    this.f108590b |= 4;
                }
            }

            private G1<C1979d, C1979d.b, e> F6() {
                if (this.f108594f == null) {
                    this.f108594f = new G1<>(this.f108593e, (this.f108590b & 4) != 0, getParentForChildren(), isClean());
                    this.f108593e = null;
                }
                return this.f108594f;
            }

            public static final Descriptors.b getDescriptor() {
                return C15146a.f108554e;
            }

            @Override
            public List<? extends e> A() {
                G1<C1979d, C1979d.b, e> g12 = this.f108594f;
                return g12 != null ? g12.s() : Collections.unmodifiableList(this.f108593e);
            }

            public b A6() {
                this.f108590b &= -3;
                this.f108592d = 0L;
                onChanged();
                return this;
            }

            @Override
            public d getDefaultInstanceForType() {
                return d.A6();
            }

            public C1979d.b D6(int index) {
                return F6().l(index);
            }

            public List<C1979d.b> E6() {
                return F6().m();
            }

            @Override
            public b mergeFrom(C input, C12666d0 extensionRegistry) throws IOException {
                extensionRegistry.getClass();
                boolean z10 = false;
                while (!z10) {
                    try {
                        try {
                            int Z10 = input.Z();
                            if (Z10 != 0) {
                                if (Z10 == 10) {
                                    this.f108591c = input.y();
                                    this.f108590b |= 1;
                                } else if (Z10 == 16) {
                                    this.f108592d = input.b0();
                                    this.f108590b |= 2;
                                } else if (Z10 == 122) {
                                    C1979d c1979d = (C1979d) input.I(C1979d.f108601n, extensionRegistry);
                                    G1<C1979d, C1979d.b, e> g12 = this.f108594f;
                                    if (g12 == null) {
                                        B6();
                                        this.f108593e.add(c1979d);
                                    } else {
                                        g12.f(c1979d);
                                    }
                                } else if (!super.parseUnknownField(input, extensionRegistry, Z10)) {
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
            public b mergeFrom(Y0 other) {
                if (other instanceof d) {
                    return I6((d) other);
                }
                super.mergeFrom(other);
                return this;
            }

            public b I1(int index, C1979d.b builderForValue) {
                G1<C1979d, C1979d.b, e> g12 = this.f108594f;
                if (g12 == null) {
                    B6();
                    this.f108593e.add(index, builderForValue.build());
                    onChanged();
                } else {
                    g12.e(index, builderForValue.build());
                }
                return this;
            }

            public b I6(d other) {
                if (other == d.A6()) {
                    return this;
                }
                if (other.s4()) {
                    this.f108591c = other.f108586c;
                    this.f108590b |= 1;
                    onChanged();
                }
                if (other.a1()) {
                    P6(other.h5());
                }
                if (this.f108594f == null) {
                    if (!other.f108588e.isEmpty()) {
                        if (this.f108593e.isEmpty()) {
                            this.f108593e = other.f108588e;
                            this.f108590b &= -5;
                        } else {
                            B6();
                            this.f108593e.addAll(other.f108588e);
                        }
                        onChanged();
                    }
                } else if (!other.f108588e.isEmpty()) {
                    if (this.f108594f.u()) {
                        this.f108594f.i();
                        this.f108594f = null;
                        this.f108593e = other.f108588e;
                        this.f108590b &= -5;
                        this.f108594f = AbstractC12722w0.alwaysUseFieldBuilders ? F6() : null;
                    } else {
                        this.f108594f.b(other.f108588e);
                    }
                }
                mergeUnknownFields(other.getUnknownFields());
                onChanged();
                return this;
            }

            @Override
            public AbstractC12724x J4() {
                Object obj = this.f108591c;
                if (!(obj instanceof String)) {
                    return (AbstractC12724x) obj;
                }
                AbstractC12724x w10 = AbstractC12724x.w((String) obj);
                this.f108591c = w10;
                return w10;
            }

            @Override
            public final b mergeUnknownFields(final r2 unknownFields) {
                return (b) super.mergeUnknownFields(unknownFields);
            }

            public b K6(int index) {
                G1<C1979d, C1979d.b, e> g12 = this.f108594f;
                if (g12 == null) {
                    B6();
                    this.f108593e.remove(index);
                    onChanged();
                } else {
                    g12.w(index);
                }
                return this;
            }

            public b L6(String value) {
                value.getClass();
                this.f108591c = value;
                this.f108590b |= 1;
                onChanged();
                return this;
            }

            public b M6(AbstractC12724x value) {
                value.getClass();
                this.f108591c = value;
                this.f108590b |= 1;
                onChanged();
                return this;
            }

            public b N6(int index, C1979d.b builderForValue) {
                G1<C1979d, C1979d.b, e> g12 = this.f108594f;
                if (g12 == null) {
                    B6();
                    this.f108593e.set(index, builderForValue.build());
                    onChanged();
                } else {
                    g12.x(index, builderForValue.build());
                }
                return this;
            }

            public b O6(int index, C1979d value) {
                G1<C1979d, C1979d.b, e> g12 = this.f108594f;
                if (g12 == null) {
                    value.getClass();
                    B6();
                    this.f108593e.set(index, value);
                    onChanged();
                } else {
                    g12.x(index, value);
                }
                return this;
            }

            public b P6(long value) {
                this.f108592d = value;
                this.f108590b |= 2;
                onChanged();
                return this;
            }

            @Override
            public final b setUnknownFields(final r2 unknownFields) {
                return (b) super.setUnknownFields(unknownFields);
            }

            @Override
            public int U() {
                G1<C1979d, C1979d.b, e> g12 = this.f108594f;
                return g12 == null ? this.f108593e.size() : g12.n();
            }

            @Override
            public C1979d V(int index) {
                G1<C1979d, C1979d.b, e> g12 = this.f108594f;
                return g12 == null ? this.f108593e.get(index) : g12.o(index);
            }

            @Override
            public boolean a1() {
                return (this.f108590b & 2) != 0;
            }

            public b a5(C1979d.b builderForValue) {
                G1<C1979d, C1979d.b, e> g12 = this.f108594f;
                if (g12 == null) {
                    B6();
                    this.f108593e.add(builderForValue.build());
                    onChanged();
                } else {
                    g12.f(builderForValue.build());
                }
                return this;
            }

            @Override
            public Descriptors.b getDescriptorForType() {
                return C15146a.f108554e;
            }

            @Override
            public String getError() {
                Object obj = this.f108591c;
                if (obj instanceof String) {
                    return (String) obj;
                }
                AbstractC12724x abstractC12724x = (AbstractC12724x) obj;
                String g02 = abstractC12724x.g0();
                if (abstractC12724x.J()) {
                    this.f108591c = g02;
                }
                return g02;
            }

            @Override
            public long h5() {
                return this.f108592d;
            }

            @Override
            public AbstractC12722w0.h internalGetFieldAccessorTable() {
                return C15146a.f108555f.d(d.class, b.class);
            }

            @Override
            public final boolean isInitialized() {
                return true;
            }

            public b m1(Iterable<? extends C1979d> values) {
                G1<C1979d, C1979d.b, e> g12 = this.f108594f;
                if (g12 == null) {
                    B6();
                    AbstractC12657b.a.addAll((Iterable) values, (List) this.f108593e);
                    onChanged();
                } else {
                    g12.b(values);
                }
                return this;
            }

            @Override
            public List<C1979d> n0() {
                G1<C1979d, C1979d.b, e> g12 = this.f108594f;
                return g12 == null ? Collections.unmodifiableList(this.f108593e) : g12.q();
            }

            @Override
            public e q0(int index) {
                G1<C1979d, C1979d.b, e> g12 = this.f108594f;
                return g12 == null ? this.f108593e.get(index) : g12.r(index);
            }

            public b q6(C1979d value) {
                G1<C1979d, C1979d.b, e> g12 = this.f108594f;
                if (g12 == null) {
                    value.getClass();
                    B6();
                    this.f108593e.add(value);
                    onChanged();
                } else {
                    g12.f(value);
                }
                return this;
            }

            public C1979d.b r6() {
                return F6().d(C1979d.C6());
            }

            @Override
            public boolean s4() {
                return (this.f108590b & 1) != 0;
            }

            public C1979d.b s6(int index) {
                return F6().c(index, C1979d.C6());
            }

            @Override
            public d build() {
                d buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractC12653a.AbstractC1035a.newUninitializedMessageException((Y0) buildPartial);
            }

            @Override
            public d buildPartial() {
                d dVar = new d(this);
                w6(dVar);
                if (this.f108590b != 0) {
                    v6(dVar);
                }
                onBuilt();
                return dVar;
            }

            public b v3(int index, C1979d value) {
                G1<C1979d, C1979d.b, e> g12 = this.f108594f;
                if (g12 == null) {
                    value.getClass();
                    B6();
                    this.f108593e.add(index, value);
                    onChanged();
                } else {
                    g12.e(index, value);
                }
                return this;
            }

            public final void v6(d result) {
                int i10;
                int i11 = this.f108590b;
                if ((i11 & 1) != 0) {
                    result.f108586c = this.f108591c;
                    i10 = 1;
                } else {
                    i10 = 0;
                }
                if ((i11 & 2) != 0) {
                    result.f108587d = this.f108592d;
                    i10 |= 2;
                }
                d.y6(result, i10);
            }

            public final void w6(d result) {
                G1<C1979d, C1979d.b, e> g12 = this.f108594f;
                if (g12 != null) {
                    result.f108588e = g12.g();
                    return;
                }
                if ((this.f108590b & 4) != 0) {
                    this.f108593e = Collections.unmodifiableList(this.f108593e);
                    this.f108590b &= -5;
                }
                result.f108588e = this.f108593e;
            }

            @Override
            public b s6() {
                super.s6();
                this.f108590b = 0;
                this.f108591c = "";
                this.f108592d = 0L;
                G1<C1979d, C1979d.b, e> g12 = this.f108594f;
                if (g12 == null) {
                    this.f108593e = Collections.emptyList();
                } else {
                    this.f108593e = null;
                    g12.h();
                }
                this.f108590b &= -5;
                return this;
            }

            public b y6() {
                this.f108591c = d.A6().getError();
                this.f108590b &= -2;
                onChanged();
                return this;
            }

            public b z6() {
                G1<C1979d, C1979d.b, e> g12 = this.f108594f;
                if (g12 == null) {
                    this.f108593e = Collections.emptyList();
                    this.f108590b &= -5;
                    onChanged();
                } else {
                    g12.h();
                }
                return this;
            }

            public b() {
                this.f108591c = "";
                this.f108593e = Collections.emptyList();
            }

            public b(AbstractC12722w0.c parent) {
                super(parent);
                this.f108591c = "";
                this.f108593e = Collections.emptyList();
            }
        }

        public d(AbstractC12722w0.b<?> builder) {
            super(builder);
            this.f108586c = "";
            this.f108587d = 0L;
            this.f108589f = (byte) -1;
        }

        public d() {
            this.f108586c = "";
            this.f108587d = 0L;
            this.f108589f = (byte) -1;
            this.f108586c = "";
            this.f108588e = Collections.emptyList();
        }
    }

    public interface e extends InterfaceC12670e1 {
        List<? extends d.e> A();

        AbstractC12724x J4();

        int U();

        d.C1979d V(int index);

        boolean a1();

        String getError();

        long h5();

        List<d.C1979d> n0();

        d.e q0(int index);

        boolean s4();
    }

    public static final class f extends AbstractC12722w0 implements g {

        public static final long f108614h = 0;

        public static final int f108615i = 1;

        public static final int f108616j = 2;

        public static final int f108617k = 3;

        public static final int f108618l = 4;

        public static final f f108619m = new f();

        @Deprecated
        public static final InterfaceC12723w1<f> f108620n = new C1981a();

        public int f108621b;

        public int f108622c;

        public int f108623d;

        public int f108624e;

        public volatile Object f108625f;

        public byte f108626g;

        public class C1981a extends AbstractC12661c<f> {
            @Override
            public f parsePartialFrom(C input, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
                b B62 = f.B6();
                try {
                    B62.mergeFrom(input, extensionRegistry);
                    return B62.buildPartial();
                } catch (InvalidProtocolBufferException e10) {
                    throw e10.setUnfinishedMessage(B62.buildPartial());
                } catch (UninitializedMessageException e11) {
                    throw e11.asInvalidProtocolBufferException().setUnfinishedMessage(B62.buildPartial());
                } catch (IOException e12) {
                    throw new InvalidProtocolBufferException(e12).setUnfinishedMessage(B62.buildPartial());
                }
            }
        }

        public static b B6() {
            return f108619m.toBuilder();
        }

        public static b C6(f prototype) {
            return f108619m.toBuilder().x6(prototype);
        }

        public static f F6(InputStream input) throws IOException {
            return (f) AbstractC12722w0.parseDelimitedWithIOException(f108620n, input);
        }

        public static f G6(InputStream input, C12666d0 extensionRegistry) throws IOException {
            return (f) AbstractC12722w0.parseDelimitedWithIOException(f108620n, input, extensionRegistry);
        }

        public static f H6(AbstractC12724x data) throws InvalidProtocolBufferException {
            return f108620n.parseFrom(data);
        }

        public static f I6(AbstractC12724x data, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
            return f108620n.parseFrom(data, extensionRegistry);
        }

        public static f J6(C input) throws IOException {
            return (f) AbstractC12722w0.parseWithIOException(f108620n, input);
        }

        public static f K6(C input, C12666d0 extensionRegistry) throws IOException {
            return (f) AbstractC12722w0.parseWithIOException(f108620n, input, extensionRegistry);
        }

        public static f L6(InputStream input) throws IOException {
            return (f) AbstractC12722w0.parseWithIOException(f108620n, input);
        }

        public static f M6(InputStream input, C12666d0 extensionRegistry) throws IOException {
            return (f) AbstractC12722w0.parseWithIOException(f108620n, input, extensionRegistry);
        }

        public static f N6(ByteBuffer data) throws InvalidProtocolBufferException {
            return f108620n.parseFrom(data);
        }

        public static f O6(ByteBuffer data, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
            return f108620n.parseFrom(data, extensionRegistry);
        }

        public static f P6(byte[] data) throws InvalidProtocolBufferException {
            return f108620n.parseFrom(data);
        }

        public static f Q6(byte[] data, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
            return f108620n.parseFrom(data, extensionRegistry);
        }

        public static final Descriptors.b getDescriptor() {
            return C15146a.f108550a;
        }

        public static InterfaceC12723w1<f> parser() {
            return f108620n;
        }

        public static int y6(f fVar, int i10) {
            int i11 = i10 | fVar.f108621b;
            fVar.f108621b = i11;
            return i11;
        }

        public static f z6() {
            return f108619m;
        }

        @Override
        public f getDefaultInstanceForType() {
            return f108619m;
        }

        @Override
        public boolean B1() {
            return (this.f108621b & 1) != 0;
        }

        @Override
        public b newBuilderForType() {
            return B6();
        }

        @Override
        public boolean E0() {
            return (this.f108621b & 2) != 0;
        }

        @Override
        public b newBuilderForType(AbstractC12722w0.c parent) {
            return new b(parent);
        }

        @Override
        public boolean R5() {
            return (this.f108621b & 4) != 0;
        }

        @Override
        public b toBuilder() {
            return this == f108619m ? new b() : new b().x6(this);
        }

        @Override
        public boolean equals(final Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof f)) {
                return super.equals(obj);
            }
            f fVar = (f) obj;
            if (B1() != fVar.B1()) {
                return false;
            }
            if ((B1() && getMajor() != fVar.getMajor()) || E0() != fVar.E0()) {
                return false;
            }
            if ((E0() && getMinor() != fVar.getMinor()) || R5() != fVar.R5()) {
                return false;
            }
            if ((!R5() || getPatch() == fVar.getPatch()) && hasSuffix() == fVar.hasSuffix()) {
                return (!hasSuffix() || getSuffix().equals(fVar.getSuffix())) && getUnknownFields().equals(fVar.getUnknownFields());
            }
            return false;
        }

        @Override
        public int getMajor() {
            return this.f108622c;
        }

        @Override
        public int getMinor() {
            return this.f108623d;
        }

        @Override
        public InterfaceC12723w1<f> getParserForType() {
            return f108620n;
        }

        @Override
        public int getPatch() {
            return this.f108624e;
        }

        @Override
        public int getSerializedSize() {
            int i10 = this.memoizedSize;
            if (i10 != -1) {
                return i10;
            }
            int w02 = (this.f108621b & 1) != 0 ? CodedOutputStream.w0(1, this.f108622c) : 0;
            if ((this.f108621b & 2) != 0) {
                w02 += CodedOutputStream.w0(2, this.f108623d);
            }
            if ((this.f108621b & 4) != 0) {
                w02 += CodedOutputStream.w0(3, this.f108624e);
            }
            if ((this.f108621b & 8) != 0) {
                w02 += AbstractC12722w0.computeStringSize(4, this.f108625f);
            }
            int serializedSize = w02 + getUnknownFields().getSerializedSize();
            this.memoizedSize = serializedSize;
            return serializedSize;
        }

        @Override
        public String getSuffix() {
            Object obj = this.f108625f;
            if (obj instanceof String) {
                return (String) obj;
            }
            AbstractC12724x abstractC12724x = (AbstractC12724x) obj;
            String g02 = abstractC12724x.g0();
            if (abstractC12724x.J()) {
                this.f108625f = g02;
            }
            return g02;
        }

        @Override
        public AbstractC12724x getSuffixBytes() {
            Object obj = this.f108625f;
            if (!(obj instanceof String)) {
                return (AbstractC12724x) obj;
            }
            AbstractC12724x w10 = AbstractC12724x.w((String) obj);
            this.f108625f = w10;
            return w10;
        }

        @Override
        public boolean hasSuffix() {
            return (this.f108621b & 8) != 0;
        }

        @Override
        public int hashCode() {
            int i10 = this.memoizedHashCode;
            if (i10 != 0) {
                return i10;
            }
            int hashCode = 779 + getDescriptor().hashCode();
            if (B1()) {
                hashCode = (((hashCode * 37) + 1) * 53) + getMajor();
            }
            if (E0()) {
                hashCode = (((hashCode * 37) + 2) * 53) + getMinor();
            }
            if (R5()) {
                hashCode = (((hashCode * 37) + 3) * 53) + getPatch();
            }
            if (hasSuffix()) {
                hashCode = (((hashCode * 37) + 4) * 53) + getSuffix().hashCode();
            }
            int hashCode2 = (hashCode * 29) + getUnknownFields().hashCode();
            this.memoizedHashCode = hashCode2;
            return hashCode2;
        }

        @Override
        public AbstractC12722w0.h internalGetFieldAccessorTable() {
            return C15146a.f108551b.d(f.class, b.class);
        }

        @Override
        public final boolean isInitialized() {
            byte b10 = this.f108626g;
            if (b10 == 1) {
                return true;
            }
            if (b10 == 0) {
                return false;
            }
            this.f108626g = (byte) 1;
            return true;
        }

        @Override
        public Object newInstance(AbstractC12722w0.i unused) {
            return new f();
        }

        @Override
        public void writeTo(CodedOutputStream output) throws IOException {
            if ((this.f108621b & 1) != 0) {
                output.i(1, this.f108622c);
            }
            if ((this.f108621b & 2) != 0) {
                output.i(2, this.f108623d);
            }
            if ((this.f108621b & 4) != 0) {
                output.i(3, this.f108624e);
            }
            if ((this.f108621b & 8) != 0) {
                AbstractC12722w0.writeString(output, 4, this.f108625f);
            }
            getUnknownFields().writeTo(output);
        }

        public static final class b extends AbstractC12722w0.b<b> implements g {

            public int f108627b;

            public int f108628c;

            public int f108629d;

            public int f108630e;

            public Object f108631f;

            public static final Descriptors.b getDescriptor() {
                return C15146a.f108550a;
            }

            public b A6(int value) {
                this.f108629d = value;
                this.f108627b |= 2;
                onChanged();
                return this;
            }

            @Override
            public boolean B1() {
                return (this.f108627b & 1) != 0;
            }

            public b B6(int value) {
                this.f108630e = value;
                this.f108627b |= 4;
                onChanged();
                return this;
            }

            public b C6(String value) {
                value.getClass();
                this.f108631f = value;
                this.f108627b |= 8;
                onChanged();
                return this;
            }

            public b D6(AbstractC12724x value) {
                value.getClass();
                this.f108631f = value;
                this.f108627b |= 8;
                onChanged();
                return this;
            }

            @Override
            public boolean E0() {
                return (this.f108627b & 2) != 0;
            }

            @Override
            public final b setUnknownFields(final r2 unknownFields) {
                return (b) super.setUnknownFields(unknownFields);
            }

            @Override
            public f buildPartial() {
                f fVar = new f(this);
                if (this.f108627b != 0) {
                    v3(fVar);
                }
                onBuilt();
                return fVar;
            }

            @Override
            public boolean R5() {
                return (this.f108627b & 4) != 0;
            }

            @Override
            public b s6() {
                super.s6();
                this.f108627b = 0;
                this.f108628c = 0;
                this.f108629d = 0;
                this.f108630e = 0;
                this.f108631f = "";
                return this;
            }

            @Override
            public Descriptors.b getDescriptorForType() {
                return C15146a.f108550a;
            }

            @Override
            public int getMajor() {
                return this.f108628c;
            }

            @Override
            public int getMinor() {
                return this.f108629d;
            }

            @Override
            public int getPatch() {
                return this.f108630e;
            }

            @Override
            public String getSuffix() {
                Object obj = this.f108631f;
                if (obj instanceof String) {
                    return (String) obj;
                }
                AbstractC12724x abstractC12724x = (AbstractC12724x) obj;
                String g02 = abstractC12724x.g0();
                if (abstractC12724x.J()) {
                    this.f108631f = g02;
                }
                return g02;
            }

            @Override
            public AbstractC12724x getSuffixBytes() {
                Object obj = this.f108631f;
                if (!(obj instanceof String)) {
                    return (AbstractC12724x) obj;
                }
                AbstractC12724x w10 = AbstractC12724x.w((String) obj);
                this.f108631f = w10;
                return w10;
            }

            @Override
            public boolean hasSuffix() {
                return (this.f108627b & 8) != 0;
            }

            @Override
            public AbstractC12722w0.h internalGetFieldAccessorTable() {
                return C15146a.f108551b.d(f.class, b.class);
            }

            @Override
            public final boolean isInitialized() {
                return true;
            }

            @Override
            public f build() {
                f buildPartial = buildPartial();
                if (buildPartial.isInitialized()) {
                    return buildPartial;
                }
                throw AbstractC12653a.AbstractC1035a.newUninitializedMessageException((Y0) buildPartial);
            }

            public b q6() {
                this.f108627b &= -2;
                this.f108628c = 0;
                onChanged();
                return this;
            }

            public b r6() {
                this.f108627b &= -3;
                this.f108629d = 0;
                onChanged();
                return this;
            }

            public b s6() {
                this.f108627b &= -5;
                this.f108630e = 0;
                onChanged();
                return this;
            }

            public b t6() {
                this.f108631f = f.z6().getSuffix();
                this.f108627b &= -9;
                onChanged();
                return this;
            }

            @Override
            public f getDefaultInstanceForType() {
                return f.z6();
            }

            public final void v3(f result) {
                int i10;
                int i11 = this.f108627b;
                if ((i11 & 1) != 0) {
                    result.f108622c = this.f108628c;
                    i10 = 1;
                } else {
                    i10 = 0;
                }
                if ((i11 & 2) != 0) {
                    result.f108623d = this.f108629d;
                    i10 |= 2;
                }
                if ((i11 & 4) != 0) {
                    result.f108624e = this.f108630e;
                    i10 |= 4;
                }
                if ((i11 & 8) != 0) {
                    result.f108625f = this.f108631f;
                    i10 |= 8;
                }
                f.y6(result, i10);
            }

            @Override
            public b mergeFrom(C input, C12666d0 extensionRegistry) throws IOException {
                extensionRegistry.getClass();
                boolean z10 = false;
                while (!z10) {
                    try {
                        try {
                            int Z10 = input.Z();
                            if (Z10 != 0) {
                                if (Z10 == 8) {
                                    this.f108628c = input.G();
                                    this.f108627b |= 1;
                                } else if (Z10 == 16) {
                                    this.f108629d = input.G();
                                    this.f108627b |= 2;
                                } else if (Z10 == 24) {
                                    this.f108630e = input.G();
                                    this.f108627b |= 4;
                                } else if (Z10 == 34) {
                                    this.f108631f = input.y();
                                    this.f108627b |= 8;
                                } else if (!super.parseUnknownField(input, extensionRegistry, Z10)) {
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
            public b mergeFrom(Y0 other) {
                if (other instanceof f) {
                    return x6((f) other);
                }
                super.mergeFrom(other);
                return this;
            }

            public b x6(f other) {
                if (other == f.z6()) {
                    return this;
                }
                if (other.B1()) {
                    z6(other.getMajor());
                }
                if (other.E0()) {
                    A6(other.getMinor());
                }
                if (other.R5()) {
                    B6(other.getPatch());
                }
                if (other.hasSuffix()) {
                    this.f108631f = other.f108625f;
                    this.f108627b |= 8;
                    onChanged();
                }
                mergeUnknownFields(other.getUnknownFields());
                onChanged();
                return this;
            }

            @Override
            public final b mergeUnknownFields(final r2 unknownFields) {
                return (b) super.mergeUnknownFields(unknownFields);
            }

            public b z6(int value) {
                this.f108628c = value;
                this.f108627b |= 1;
                onChanged();
                return this;
            }

            public b() {
                this.f108631f = "";
            }

            public b(AbstractC12722w0.c parent) {
                super(parent);
                this.f108631f = "";
            }
        }

        public f(AbstractC12722w0.b<?> builder) {
            super(builder);
            this.f108622c = 0;
            this.f108623d = 0;
            this.f108624e = 0;
            this.f108625f = "";
            this.f108626g = (byte) -1;
        }

        public f() {
            this.f108622c = 0;
            this.f108623d = 0;
            this.f108624e = 0;
            this.f108625f = "";
            this.f108626g = (byte) -1;
            this.f108625f = "";
        }
    }

    public interface g extends InterfaceC12670e1 {
        boolean B1();

        boolean E0();

        boolean R5();

        int getMajor();

        int getMinor();

        int getPatch();

        String getSuffix();

        AbstractC12724x getSuffixBytes();

        boolean hasSuffix();
    }

    static {
        Descriptors.b bVar = i().u().get(0);
        f108550a = bVar;
        f108551b = new AbstractC12722w0.h(bVar, new String[]{"Major", "Minor", "Patch", "Suffix"});
        Descriptors.b bVar2 = i().u().get(1);
        f108552c = bVar2;
        f108553d = new AbstractC12722w0.h(bVar2, new String[]{"FileToGenerate", "Parameter", "ProtoFile", "CompilerVersion"});
        Descriptors.b bVar3 = i().u().get(2);
        f108554e = bVar3;
        f108555f = new AbstractC12722w0.h(bVar3, new String[]{"Error", "SupportedFeatures", "File"});
        Descriptors.b bVar4 = bVar3.u().get(0);
        f108556g = bVar4;
        f108557h = new AbstractC12722w0.h(bVar4, new String[]{"Name", "InsertionPoint", "Content", "GeneratedCodeInfo"});
        H.c0();
    }

    public static Descriptors.g i() {
        return f108558i;
    }

    public static void j(C12658b0 registry) {
        k(registry);
    }

    public static void k(C12666d0 registry) {
    }
}

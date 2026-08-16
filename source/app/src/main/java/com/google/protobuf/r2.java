package com.google.protobuf;

import com.google.protobuf.AbstractC12657b;
import com.google.protobuf.AbstractC12724x;
import com.google.protobuf.C2;
import com.google.protobuf.InterfaceC12659b1;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.TreeMap;

public final class r2 implements InterfaceC12659b1 {

    public static final r2 f69455c = new r2(new TreeMap());

    public static final d f69456d = new d();

    public final TreeMap<Integer, c> f69457b;

    public static final class c {

        public static final c f69459f = u().g();

        public List<Long> f69460a;

        public List<Integer> f69461b;

        public List<Long> f69462c;

        public List<AbstractC12724x> f69463d;

        public List<r2> f69464e;

        public static final class a {

            public c f69465a = new c();

            public static a a() {
                return j();
            }

            public static a j() {
                return new a();
            }

            public a b(int value) {
                if (this.f69465a.f69461b == null) {
                    this.f69465a.f69461b = new ArrayList();
                }
                this.f69465a.f69461b.add(Integer.valueOf(value));
                return this;
            }

            public a c(long value) {
                if (this.f69465a.f69462c == null) {
                    this.f69465a.f69462c = new ArrayList();
                }
                this.f69465a.f69462c.add(Long.valueOf(value));
                return this;
            }

            public a d(r2 value) {
                if (this.f69465a.f69464e == null) {
                    this.f69465a.f69464e = new ArrayList();
                }
                this.f69465a.f69464e.add(value);
                return this;
            }

            public a e(AbstractC12724x value) {
                if (this.f69465a.f69463d == null) {
                    this.f69465a.f69463d = new ArrayList();
                }
                this.f69465a.f69463d.add(value);
                return this;
            }

            public a f(long value) {
                if (this.f69465a.f69460a == null) {
                    this.f69465a.f69460a = new ArrayList();
                }
                this.f69465a.f69460a.add(Long.valueOf(value));
                return this;
            }

            public c g() {
                c cVar = new c();
                if (this.f69465a.f69460a == null) {
                    cVar.f69460a = Collections.emptyList();
                } else {
                    cVar.f69460a = Collections.unmodifiableList(new ArrayList(this.f69465a.f69460a));
                }
                if (this.f69465a.f69461b == null) {
                    cVar.f69461b = Collections.emptyList();
                } else {
                    cVar.f69461b = Collections.unmodifiableList(new ArrayList(this.f69465a.f69461b));
                }
                if (this.f69465a.f69462c == null) {
                    cVar.f69462c = Collections.emptyList();
                } else {
                    cVar.f69462c = Collections.unmodifiableList(new ArrayList(this.f69465a.f69462c));
                }
                if (this.f69465a.f69463d == null) {
                    cVar.f69463d = Collections.emptyList();
                } else {
                    cVar.f69463d = Collections.unmodifiableList(new ArrayList(this.f69465a.f69463d));
                }
                if (this.f69465a.f69464e == null) {
                    cVar.f69464e = Collections.emptyList();
                } else {
                    cVar.f69464e = Collections.unmodifiableList(new ArrayList(this.f69465a.f69464e));
                }
                return cVar;
            }

            public a h() {
                this.f69465a = new c();
                return this;
            }

            public a clone() {
                c cVar = new c();
                if (this.f69465a.f69460a == null) {
                    cVar.f69460a = null;
                } else {
                    cVar.f69460a = new ArrayList(this.f69465a.f69460a);
                }
                if (this.f69465a.f69461b == null) {
                    cVar.f69461b = null;
                } else {
                    cVar.f69461b = new ArrayList(this.f69465a.f69461b);
                }
                if (this.f69465a.f69462c == null) {
                    cVar.f69462c = null;
                } else {
                    cVar.f69462c = new ArrayList(this.f69465a.f69462c);
                }
                if (this.f69465a.f69463d == null) {
                    cVar.f69463d = null;
                } else {
                    cVar.f69463d = new ArrayList(this.f69465a.f69463d);
                }
                if (this.f69465a.f69464e == null) {
                    cVar.f69464e = null;
                } else {
                    cVar.f69464e = new ArrayList(this.f69465a.f69464e);
                }
                a aVar = new a();
                aVar.f69465a = cVar;
                return aVar;
            }

            public a k(c other) {
                if (!other.f69460a.isEmpty()) {
                    if (this.f69465a.f69460a == null) {
                        this.f69465a.f69460a = new ArrayList();
                    }
                    this.f69465a.f69460a.addAll(other.f69460a);
                }
                if (!other.f69461b.isEmpty()) {
                    if (this.f69465a.f69461b == null) {
                        this.f69465a.f69461b = new ArrayList();
                    }
                    this.f69465a.f69461b.addAll(other.f69461b);
                }
                if (!other.f69462c.isEmpty()) {
                    if (this.f69465a.f69462c == null) {
                        this.f69465a.f69462c = new ArrayList();
                    }
                    this.f69465a.f69462c.addAll(other.f69462c);
                }
                if (!other.f69463d.isEmpty()) {
                    if (this.f69465a.f69463d == null) {
                        this.f69465a.f69463d = new ArrayList();
                    }
                    this.f69465a.f69463d.addAll(other.f69463d);
                }
                if (!other.f69464e.isEmpty()) {
                    if (this.f69465a.f69464e == null) {
                        this.f69465a.f69464e = new ArrayList();
                    }
                    this.f69465a.f69464e.addAll(other.f69464e);
                }
                return this;
            }
        }

        public static c l() {
            return f69459f;
        }

        public static a u() {
            return a.a();
        }

        public static a v(c copyFrom) {
            return u().k(copyFrom);
        }

        public void A(int fieldNumber, C2 writer) throws IOException {
            writer.R(fieldNumber, this.f69460a, false);
            writer.j(fieldNumber, this.f69461b, false);
            writer.t(fieldNumber, this.f69462c, false);
            writer.y(fieldNumber, this.f69463d);
            if (writer.J() == C2.a.ASCENDING) {
                for (int i10 = 0; i10 < this.f69464e.size(); i10++) {
                    writer.s(fieldNumber);
                    this.f69464e.get(i10).r6(writer);
                    writer.v(fieldNumber);
                }
                return;
            }
            for (int size = this.f69464e.size() - 1; size >= 0; size--) {
                writer.v(fieldNumber);
                this.f69464e.get(size).r6(writer);
                writer.s(fieldNumber);
            }
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (other instanceof c) {
                return Arrays.equals(p(), ((c) other).p());
            }
            return false;
        }

        public int hashCode() {
            return Arrays.hashCode(p());
        }

        public List<Integer> m() {
            return this.f69461b;
        }

        public List<Long> n() {
            return this.f69462c;
        }

        public List<r2> o() {
            return this.f69464e;
        }

        public final Object[] p() {
            return new Object[]{this.f69460a, this.f69461b, this.f69462c, this.f69463d, this.f69464e};
        }

        public List<AbstractC12724x> q() {
            return this.f69463d;
        }

        public int r(int fieldNumber) {
            Iterator<Long> it = this.f69460a.iterator();
            int i10 = 0;
            while (it.hasNext()) {
                i10 += CodedOutputStream.a1(fieldNumber, it.next().longValue());
            }
            Iterator<Integer> it2 = this.f69461b.iterator();
            while (it2.hasNext()) {
                i10 += CodedOutputStream.m0(fieldNumber, it2.next().intValue());
            }
            Iterator<Long> it3 = this.f69462c.iterator();
            while (it3.hasNext()) {
                i10 += CodedOutputStream.o0(fieldNumber, it3.next().longValue());
            }
            Iterator<AbstractC12724x> it4 = this.f69463d.iterator();
            while (it4.hasNext()) {
                i10 += CodedOutputStream.g0(fieldNumber, it4.next());
            }
            Iterator<r2> it5 = this.f69464e.iterator();
            while (it5.hasNext()) {
                i10 += CodedOutputStream.s0(fieldNumber, it5.next());
            }
            return i10;
        }

        public int s(int fieldNumber) {
            Iterator<AbstractC12724x> it = this.f69463d.iterator();
            int i10 = 0;
            while (it.hasNext()) {
                i10 += CodedOutputStream.K0(fieldNumber, it.next());
            }
            return i10;
        }

        public List<Long> t() {
            return this.f69460a;
        }

        public AbstractC12724x w(int fieldNumber) {
            try {
                AbstractC12724x.h M10 = AbstractC12724x.M(r(fieldNumber));
                z(fieldNumber, M10.b());
                return M10.a();
            } catch (IOException e10) {
                throw new RuntimeException("Serializing to a ByteString should never fail with an IOException", e10);
            }
        }

        public void x(int fieldNumber, CodedOutputStream output) throws IOException {
            Iterator<AbstractC12724x> it = this.f69463d.iterator();
            while (it.hasNext()) {
                output.Y1(fieldNumber, it.next());
            }
        }

        public final void y(int fieldNumber, C2 writer) throws IOException {
            if (writer.J() != C2.a.DESCENDING) {
                Iterator<AbstractC12724x> it = this.f69463d.iterator();
                while (it.hasNext()) {
                    writer.b(fieldNumber, it.next());
                }
            } else {
                List<AbstractC12724x> list = this.f69463d;
                ListIterator<AbstractC12724x> listIterator = list.listIterator(list.size());
                while (listIterator.hasPrevious()) {
                    writer.b(fieldNumber, listIterator.previous());
                }
            }
        }

        public void z(int fieldNumber, CodedOutputStream output) throws IOException {
            Iterator<Long> it = this.f69460a.iterator();
            while (it.hasNext()) {
                output.f(fieldNumber, it.next().longValue());
            }
            Iterator<Integer> it2 = this.f69461b.iterator();
            while (it2.hasNext()) {
                output.c(fieldNumber, it2.next().intValue());
            }
            Iterator<Long> it3 = this.f69462c.iterator();
            while (it3.hasNext()) {
                output.o(fieldNumber, it3.next().longValue());
            }
            Iterator<AbstractC12724x> it4 = this.f69463d.iterator();
            while (it4.hasNext()) {
                output.h(fieldNumber, it4.next());
            }
            Iterator<r2> it5 = this.f69464e.iterator();
            while (it5.hasNext()) {
                output.F1(fieldNumber, it5.next());
            }
        }

        public c() {
        }
    }

    public static final class d extends AbstractC12661c<r2> {
        @Override
        public r2 parsePartialFrom(C input, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
            b Q12 = r2.Q1();
            try {
                Q12.mergeFrom(input);
                return Q12.buildPartial();
            } catch (InvalidProtocolBufferException e10) {
                throw e10.setUnfinishedMessage(Q12.buildPartial());
            } catch (IOException e11) {
                throw new InvalidProtocolBufferException(e11).setUnfinishedMessage(Q12.buildPartial());
            }
        }
    }

    public static b D2(r2 copyFrom) {
        return Q1().B6(copyFrom);
    }

    public static r2 H3(InputStream input) throws IOException {
        return Q1().mergeFrom(input).build();
    }

    public static b Q1() {
        return b.t();
    }

    public static r2 b0() {
        return f69455c;
    }

    public static r2 d3(AbstractC12724x data) throws InvalidProtocolBufferException {
        return Q1().mergeFrom(data).build();
    }

    public static r2 i4(byte[] data) throws InvalidProtocolBufferException {
        return Q1().mergeFrom(data).build();
    }

    public static r2 v3(C input) throws IOException {
        return Q1().mergeFrom(input).build();
    }

    @Override
    public r2 getDefaultInstanceForType() {
        return f69455c;
    }

    public boolean I1(int number) {
        return this.f69457b.containsKey(Integer.valueOf(number));
    }

    public c S0(int number) {
        c cVar = this.f69457b.get(Integer.valueOf(number));
        return cVar == null ? c.l() : cVar;
    }

    @Override
    public final d getParserForType() {
        return f69456d;
    }

    @Override
    public b toBuilder() {
        return Q1().B6(this);
    }

    @Override
    public b newBuilderForType() {
        return Q1();
    }

    public Map<Integer, c> a0() {
        return (Map) this.f69457b.clone();
    }

    public void a5(CodedOutputStream output) throws IOException {
        for (Map.Entry<Integer, c> entry : this.f69457b.entrySet()) {
            entry.getValue().x(entry.getKey().intValue(), output);
        }
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof r2) && this.f69457b.equals(((r2) other).f69457b);
    }

    @Override
    public int getSerializedSize() {
        int i10 = 0;
        if (!this.f69457b.isEmpty()) {
            for (Map.Entry<Integer, c> entry : this.f69457b.entrySet()) {
                i10 += entry.getValue().r(entry.getKey().intValue());
            }
        }
        return i10;
    }

    public int hashCode() {
        if (this.f69457b.isEmpty()) {
            return 0;
        }
        return this.f69457b.hashCode();
    }

    @Override
    public boolean isInitialized() {
        return true;
    }

    public int m1() {
        int i10 = 0;
        for (Map.Entry<Integer, c> entry : this.f69457b.entrySet()) {
            i10 += entry.getValue().s(entry.getKey().intValue());
        }
        return i10;
    }

    public void q6(C2 writer) throws IOException {
        if (writer.J() == C2.a.DESCENDING) {
            for (Map.Entry<Integer, c> entry : this.f69457b.descendingMap().entrySet()) {
                entry.getValue().y(entry.getKey().intValue(), writer);
            }
            return;
        }
        for (Map.Entry<Integer, c> entry2 : this.f69457b.entrySet()) {
            entry2.getValue().y(entry2.getKey().intValue(), writer);
        }
    }

    public void r6(C2 writer) throws IOException {
        if (writer.J() == C2.a.DESCENDING) {
            for (Map.Entry<Integer, c> entry : this.f69457b.descendingMap().entrySet()) {
                entry.getValue().A(entry.getKey().intValue(), writer);
            }
            return;
        }
        for (Map.Entry<Integer, c> entry2 : this.f69457b.entrySet()) {
            entry2.getValue().A(entry2.getKey().intValue(), writer);
        }
    }

    @Override
    public byte[] toByteArray() {
        try {
            byte[] bArr = new byte[getSerializedSize()];
            CodedOutputStream n12 = CodedOutputStream.n1(bArr);
            writeTo(n12);
            n12.Z();
            return bArr;
        } catch (IOException e10) {
            throw new RuntimeException("Serializing to a byte array threw an IOException (should never happen).", e10);
        }
    }

    @Override
    public AbstractC12724x toByteString() {
        try {
            AbstractC12724x.h M10 = AbstractC12724x.M(getSerializedSize());
            writeTo(M10.b());
            return M10.a();
        } catch (IOException e10) {
            throw new RuntimeException("Serializing to a ByteString threw an IOException (should never happen).", e10);
        }
    }

    public String toString() {
        return TextFormat.L().p(this);
    }

    @Override
    public void writeDelimitedTo(OutputStream output) throws IOException {
        CodedOutputStream j12 = CodedOutputStream.j1(output);
        j12.h2(getSerializedSize());
        writeTo(j12);
        j12.e1();
    }

    @Override
    public void writeTo(CodedOutputStream output) throws IOException {
        for (Map.Entry<Integer, c> entry : this.f69457b.entrySet()) {
            entry.getValue().z(entry.getKey().intValue(), output);
        }
    }

    public r2(TreeMap<Integer, c> fields) {
        this.f69457b = fields;
    }

    public static final class b implements InterfaceC12659b1.a {

        public TreeMap<Integer, c.a> f69458b = new TreeMap<>();

        public static b q6() {
            return new b();
        }

        public static b t() {
            return q6();
        }

        public b A0(int number, c field) {
            if (number > 0) {
                this.f69458b.put(Integer.valueOf(number), c.v(field));
                return this;
            }
            throw new IllegalArgumentException(number + " is not a valid field number.");
        }

        @Override
        public b mergeFrom(InterfaceC12659b1 m10) {
            if (m10 instanceof r2) {
                return B6((r2) m10);
            }
            throw new IllegalArgumentException("mergeFrom(MessageLite) can only merge messages of the same type.");
        }

        public b B6(r2 other) {
            if (other != r2.b0()) {
                for (Map.Entry entry : other.f69457b.entrySet()) {
                    u6(((Integer) entry.getKey()).intValue(), (c) entry.getValue());
                }
            }
            return this;
        }

        @Override
        public b mergeFrom(InputStream input) throws IOException {
            C k10 = C.k(input);
            mergeFrom(k10);
            k10.a(0);
            return this;
        }

        @Override
        public b mergeFrom(InputStream input, C12666d0 extensionRegistry) throws IOException {
            return mergeFrom(input);
        }

        @Override
        public b mergeFrom(byte[] data) throws InvalidProtocolBufferException {
            try {
                C q10 = C.q(data);
                mergeFrom(q10);
                q10.a(0);
                return this;
            } catch (InvalidProtocolBufferException e10) {
                throw e10;
            } catch (IOException e11) {
                throw new RuntimeException("Reading from a byte array threw an IOException (should never happen).", e11);
            }
        }

        @Override
        public b mergeFrom(byte[] data, int off, int len) throws InvalidProtocolBufferException {
            try {
                C r10 = C.r(data, off, len);
                mergeFrom(r10);
                r10.a(0);
                return this;
            } catch (InvalidProtocolBufferException e10) {
                throw e10;
            } catch (IOException e11) {
                throw new RuntimeException("Reading from a byte array threw an IOException (should never happen).", e11);
            }
        }

        @Override
        public b mergeFrom(byte[] data, int off, int len, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
            return mergeFrom(data, off, len);
        }

        @Override
        public b mergeFrom(byte[] data, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
            return mergeFrom(data);
        }

        @Override
        public b s6() {
            this.f69458b = new TreeMap<>();
            return this;
        }

        public b I6(int number, AbstractC12724x value) {
            if (number > 0) {
                s6(number).e(value);
                return this;
            }
            throw new IllegalArgumentException(number + " is not a valid field number.");
        }

        public b J6(int number, int value) {
            if (number > 0) {
                s6(number).f(value);
                return this;
            }
            throw new IllegalArgumentException(number + " is not a valid field number.");
        }

        public Map<Integer, c> S0() {
            TreeMap treeMap = new TreeMap();
            for (Map.Entry<Integer, c.a> entry : this.f69458b.entrySet()) {
                treeMap.put(entry.getKey(), entry.getValue().g());
            }
            return Collections.unmodifiableMap(treeMap);
        }

        @Override
        public r2 build() {
            if (this.f69458b.isEmpty()) {
                return r2.b0();
            }
            TreeMap treeMap = new TreeMap();
            for (Map.Entry<Integer, c.a> entry : this.f69458b.entrySet()) {
                treeMap.put(entry.getKey(), entry.getValue().g());
            }
            return new r2(treeMap);
        }

        @Override
        public b m1247clone() {
            b Q12 = r2.Q1();
            for (Map.Entry<Integer, c.a> entry : this.f69458b.entrySet()) {
                Q12.f69458b.put(entry.getKey(), entry.getValue().clone());
            }
            return Q12;
        }

        @Override
        public boolean isInitialized() {
            return true;
        }

        @Override
        public r2 buildPartial() {
            return build();
        }

        @Override
        public boolean mergeDelimitedFrom(InputStream input) throws IOException {
            int read = input.read();
            if (read == -1) {
                return false;
            }
            mergeFrom(new AbstractC12657b.a.C1036a(input, C.P(read, input)));
            return true;
        }

        @Override
        public r2 getDefaultInstanceForType() {
            return r2.b0();
        }

        public final c.a s6(int number) {
            if (number == 0) {
                return null;
            }
            c.a aVar = this.f69458b.get(Integer.valueOf(number));
            if (aVar != null) {
                return aVar;
            }
            c.a u10 = c.u();
            this.f69458b.put(Integer.valueOf(number), u10);
            return u10;
        }

        public boolean t6(int number) {
            return this.f69458b.containsKey(Integer.valueOf(number));
        }

        public b u6(int number, final c field) {
            if (number > 0) {
                if (t6(number)) {
                    s6(number).k(field);
                } else {
                    A0(number, field);
                }
                return this;
            }
            throw new IllegalArgumentException(number + " is not a valid field number.");
        }

        public b v3(int number) {
            if (number > 0) {
                if (this.f69458b.containsKey(Integer.valueOf(number))) {
                    this.f69458b.remove(Integer.valueOf(number));
                }
                return this;
            }
            throw new IllegalArgumentException(number + " is not a valid field number.");
        }

        public boolean v6(int tag, C input) throws IOException {
            int a10 = A2.a(tag);
            int b10 = A2.b(tag);
            if (b10 == 0) {
                s6(a10).f(input.H());
                return true;
            }
            if (b10 == 1) {
                s6(a10).c(input.C());
                return true;
            }
            if (b10 == 2) {
                s6(a10).e(input.y());
                return true;
            }
            if (b10 == 3) {
                b Q12 = r2.Q1();
                input.F(a10, Q12, C12658b0.v());
                s6(a10).d(Q12.build());
                return true;
            }
            if (b10 == 4) {
                return false;
            }
            if (b10 != 5) {
                throw InvalidProtocolBufferException.invalidWireType();
            }
            s6(a10).b(input.B());
            return true;
        }

        @Override
        public b mergeFrom(AbstractC12724x data) throws InvalidProtocolBufferException {
            try {
                C N10 = data.N();
                mergeFrom(N10);
                N10.a(0);
                return this;
            } catch (InvalidProtocolBufferException e10) {
                throw e10;
            } catch (IOException e11) {
                throw new RuntimeException("Reading from a ByteString threw an IOException (should never happen).", e11);
            }
        }

        @Override
        public b mergeFrom(AbstractC12724x data, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
            return mergeFrom(data);
        }

        @Override
        public b mergeFrom(C input) throws IOException {
            int Z10;
            do {
                Z10 = input.Z();
                if (Z10 == 0) {
                    break;
                }
            } while (v6(Z10, input));
            return this;
        }

        @Override
        public b mergeFrom(C input, C12666d0 extensionRegistry) throws IOException {
            return mergeFrom(input);
        }

        @Override
        public boolean mergeDelimitedFrom(InputStream input, C12666d0 extensionRegistry) throws IOException {
            return mergeDelimitedFrom(input);
        }
    }

    @Override
    public void writeTo(OutputStream output) throws IOException {
        CodedOutputStream j12 = CodedOutputStream.j1(output);
        writeTo(j12);
        j12.e1();
    }
}

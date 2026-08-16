package Yf;

import Lf.j;
import Xf.InterfaceC3312m;
import java.util.Iterator;
import java.util.List;
import java.util.Spliterator;
import java.util.Spliterators;
import java.util.function.Supplier;
import java.util.stream.Collectors;
import java.util.stream.DoubleStream;
import java.util.stream.IntStream;
import java.util.stream.LongStream;
import java.util.stream.Stream;
import java.util.stream.StreamSupport;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.t0;
import nf.InterfaceC14422l0;
import org.jetbrains.annotations.NotNull;
import pf.C14985q;

@j(name = "StreamsKt")
public final class b {

    @t0({"SMAP\nSequences.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Sequences.kt\nkotlin/sequences/SequencesKt__SequencesKt$Sequence$1\n+ 2 Streams.kt\nkotlin/streams/jdk8/StreamsKt\n*L\n1#1,730:1\n31#2:731\n*E\n"})
    public static final class a<T> implements InterfaceC3312m<T> {

        public final Stream f30440a;

        public a(Stream stream) {
            this.f30440a = stream;
        }

        @Override
        public Iterator<T> iterator() {
            Iterator<T> iterator2 = this.f30440a.iterator2();
            M.o(iterator2, "iterator(...)");
            return iterator2;
        }
    }

    @t0({"SMAP\nSequences.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Sequences.kt\nkotlin/sequences/SequencesKt__SequencesKt$Sequence$1\n+ 2 Streams.kt\nkotlin/streams/jdk8/StreamsKt\n*L\n1#1,730:1\n39#2:731\n*E\n"})
    public static final class C0804b implements InterfaceC3312m<Integer> {

        public final IntStream f30441a;

        public C0804b(IntStream intStream) {
            this.f30441a = intStream;
        }

        @Override
        public Iterator<Integer> iterator() {
            Iterator<Integer> iterator2 = this.f30441a.iterator2();
            M.o(iterator2, "iterator(...)");
            return iterator2;
        }
    }

    @t0({"SMAP\nSequences.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Sequences.kt\nkotlin/sequences/SequencesKt__SequencesKt$Sequence$1\n+ 2 Streams.kt\nkotlin/streams/jdk8/StreamsKt\n*L\n1#1,730:1\n47#2:731\n*E\n"})
    public static final class c implements InterfaceC3312m<Long> {

        public final LongStream f30442a;

        public c(LongStream longStream) {
            this.f30442a = longStream;
        }

        @Override
        public Iterator<Long> iterator() {
            Iterator<Long> iterator2 = this.f30442a.iterator2();
            M.o(iterator2, "iterator(...)");
            return iterator2;
        }
    }

    @t0({"SMAP\nSequences.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Sequences.kt\nkotlin/sequences/SequencesKt__SequencesKt$Sequence$1\n+ 2 Streams.kt\nkotlin/streams/jdk8/StreamsKt\n*L\n1#1,730:1\n55#2:731\n*E\n"})
    public static final class d implements InterfaceC3312m<Double> {

        public final DoubleStream f30443a;

        public d(DoubleStream doubleStream) {
            this.f30443a = doubleStream;
        }

        @Override
        public Iterator<Double> iterator() {
            Iterator<Double> iterator2 = this.f30443a.iterator2();
            M.o(iterator2, "iterator(...)");
            return iterator2;
        }
    }

    @InterfaceC14422l0(version = "1.2")
    @NotNull
    public static final InterfaceC3312m<Double> b(@NotNull DoubleStream doubleStream) {
        M.p(doubleStream, "<this>");
        return new d(doubleStream);
    }

    @InterfaceC14422l0(version = "1.2")
    @NotNull
    public static final InterfaceC3312m<Integer> c(@NotNull IntStream intStream) {
        M.p(intStream, "<this>");
        return new C0804b(intStream);
    }

    @InterfaceC14422l0(version = "1.2")
    @NotNull
    public static final InterfaceC3312m<Long> d(@NotNull LongStream longStream) {
        M.p(longStream, "<this>");
        return new c(longStream);
    }

    @InterfaceC14422l0(version = "1.2")
    @NotNull
    public static final <T> InterfaceC3312m<T> e(@NotNull Stream<T> stream) {
        M.p(stream, "<this>");
        return new a(stream);
    }

    @InterfaceC14422l0(version = "1.2")
    @NotNull
    public static final <T> Stream<T> f(@NotNull final InterfaceC3312m<? extends T> interfaceC3312m) {
        M.p(interfaceC3312m, "<this>");
        Stream<T> stream = StreamSupport.stream(new Supplier() {
            @Override
            public final Object get() {
                Spliterator g10;
                g10 = b.g(InterfaceC3312m.this);
                return g10;
            }
        }, 16, false);
        M.o(stream, "stream(...)");
        return stream;
    }

    public static final Spliterator g(InterfaceC3312m interfaceC3312m) {
        return Spliterators.spliteratorUnknownSize(interfaceC3312m.iterator(), 16);
    }

    @InterfaceC14422l0(version = "1.2")
    @NotNull
    public static final List<Double> h(@NotNull DoubleStream doubleStream) {
        M.p(doubleStream, "<this>");
        double[] array = doubleStream.toArray();
        M.o(array, "toArray(...)");
        return C14985q.p(array);
    }

    @InterfaceC14422l0(version = "1.2")
    @NotNull
    public static final List<Integer> i(@NotNull IntStream intStream) {
        M.p(intStream, "<this>");
        int[] array = intStream.toArray();
        M.o(array, "toArray(...)");
        return C14985q.r(array);
    }

    @InterfaceC14422l0(version = "1.2")
    @NotNull
    public static final List<Long> j(@NotNull LongStream longStream) {
        M.p(longStream, "<this>");
        long[] array = longStream.toArray();
        M.o(array, "toArray(...)");
        return C14985q.s(array);
    }

    @InterfaceC14422l0(version = "1.2")
    @NotNull
    public static final <T> List<T> k(@NotNull Stream<T> stream) {
        M.p(stream, "<this>");
        Object collect = stream.collect(Collectors.toList());
        M.o(collect, "collect(...)");
        return (List) collect;
    }
}

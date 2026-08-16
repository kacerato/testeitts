package com.android.tools.r8.internal;

import java.util.function.BiConsumer;
import java.util.function.BinaryOperator;
import java.util.function.Function;
import java.util.function.Supplier;
import java.util.stream.Collector;

public abstract class AbstractC5438Ke {

    public static final Collector f41723a;

    static {
        Collector.of(new Supplier() {
            @Override
            public final Object get() {
                return AbstractC7552hC.h();
            }
        }, new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                ((C7051eC) obj).a(obj2);
            }
        }, new BinaryOperator() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                return ((C7051eC) obj).a((C7051eC) obj2);
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((C7051eC) obj).a();
            }
        }, new Collector.Characteristics[0]);
        f41723a = Collector.of(new Supplier() {
            @Override
            public final Object get() {
                return QC.h();
            }
        }, new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                ((IC) obj).a(obj2);
            }
        }, new BinaryOperator() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                return ((IC) obj).a((IC) obj2);
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((IC) obj).a();
            }
        }, new Collector.Characteristics[0]);
        Collector.of(new Supplier() {
            @Override
            public final Object get() {
                return GC.b();
            }
        }, new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                ((FC) obj).a((C5024Db0) obj2);
            }
        }, new BinaryOperator() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                return ((FC) obj).a((FC) obj2);
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((FC) obj).a();
            }
        }, new Collector.Characteristics[0]);
    }

    public static C5380Je a() {
        return new C5380Je();
    }

    public static Collector b() {
        return Collector.of(new Supplier() {
            @Override
            public final Object get() {
                return AbstractC5438Ke.a();
            }
        }, new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                ((C5380Je) obj).a((Enum) obj2);
            }
        }, new BinaryOperator() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                return ((C5380Je) obj).a((C5380Je) obj2);
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((C5380Je) obj).a();
            }
        }, Collector.Characteristics.UNORDERED);
    }
}

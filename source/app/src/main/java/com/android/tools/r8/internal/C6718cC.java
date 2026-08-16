package com.android.tools.r8.internal;

import java.util.Map;
import java.util.Set;
import java.util.SortedMap;
import java.util.function.BiFunction;
import java.util.function.Function;

public final class C6718cC extends C10235xH {

    public final DG f46998b;

    public C6718cC(DG dg2) {
        this.f46998b = dg2;
    }

    @Override
    public final InterfaceC10068wH a(int i10, int i11) {
        return new AG(this.f46998b, i10, false, i11, false);
    }

    @Override
    public final InterfaceC10068wH b(int i10) {
        return this.f46998b.b(i10);
    }

    @Override
    public final I30 c() {
        return this.f46998b.c();
    }

    @Override
    public final Object compute(Object obj, BiFunction biFunction) {
        throw new C5417Jv0("Should not modify an immutable structure");
    }

    @Override
    public final Object computeIfAbsent(Object obj, Function function) {
        throw new C5417Jv0("Should not modify an immutable structure");
    }

    @Override
    public final Object computeIfPresent(Object obj, BiFunction biFunction) {
        throw new C5417Jv0("Should not modify an immutable structure");
    }

    @Override
    public final int d() {
        return this.f46998b.d();
    }

    @Override
    public final I30 entrySet() {
        return this.f46998b.c();
    }

    @Override
    public final Set entrySet() {
        return this.f46998b.c();
    }

    @Override
    public final Object firstKey() {
        return Integer.valueOf(this.f46998b.a());
    }

    @Override
    public final Object get(int i10) {
        return this.f46998b.get(i10);
    }

    @Override
    public final Object getOrDefault(Object obj, Object obj2) {
        return this.f46998b.getOrDefault(obj, obj2);
    }

    @Override
    public final SortedMap headMap(Object obj) {
        return this.f46998b.c(((Integer) obj).intValue());
    }

    @Override
    public final M30 e() {
        return this.f46998b.c();
    }

    @Override
    public final boolean isEmpty() {
        return this.f46998b.isEmpty();
    }

    @Override
    public final Integer firstKey() {
        return Integer.valueOf(this.f46998b.a());
    }

    @Override
    public final Integer lastKey() {
        return Integer.valueOf(this.f46998b.d());
    }

    @Override
    public final InterfaceC8568nI o() {
        return this.f46998b.o();
    }

    @Override
    public final Object lastKey() {
        return Integer.valueOf(this.f46998b.d());
    }

    @Override
    public final Object put(Object obj, Object obj2) {
        throw new C5417Jv0("Should not modify an immutable structure");
    }

    @Override
    public final void putAll(Map map) {
        throw new C5417Jv0("Should not modify an immutable structure");
    }

    @Override
    public final Object putIfAbsent(Object obj, Object obj2) {
        throw new C5417Jv0("Should not modify an immutable structure");
    }

    @Override
    public final Object remove(int i10) {
        throw new C5417Jv0("Should not modify an immutable structure");
    }

    @Override
    public final int size() {
        return this.f46998b.f39474c;
    }

    @Override
    public final SortedMap subMap(Object obj, Object obj2) {
        return this.f46998b.a(((Integer) obj).intValue(), ((Integer) obj2).intValue());
    }

    @Override
    public final SortedMap tailMap(Object obj) {
        return this.f46998b.b(((Integer) obj).intValue());
    }

    @Override
    public final InterfaceC10068wH tailMap(Integer num) {
        return this.f46998b.b(num.intValue());
    }

    @Override
    public final M30 c() {
        return this.f46998b.c();
    }

    @Override
    public final Object get(Object obj) {
        return this.f46998b.get(obj);
    }

    @Override
    public final InterfaceC9069qI o() {
        return this.f46998b.o();
    }

    @Override
    public final boolean remove(Object obj, Object obj2) {
        throw new C5417Jv0("Should not modify an immutable structure");
    }

    @Override
    public final int a() {
        return this.f46998b.a();
    }

    @Override
    public final InterfaceC10068wH c(int i10) {
        return this.f46998b.c(i10);
    }

    @Override
    public final Set o() {
        return this.f46998b.o();
    }

    @Override
    public final Object remove(Object obj) {
        throw new C5417Jv0("Should not modify an immutable structure");
    }

    @Override
    public final InterfaceC10068wH headMap(Integer num) {
        return this.f46998b.c(num.intValue());
    }

    @Override
    public final InterfaceC10068wH subMap(Integer num, Integer num2) {
        return this.f46998b.a(num.intValue(), num2.intValue());
    }

    @Override
    public final Object a(int i10, Object obj) {
        throw new C5417Jv0("Should not modify an immutable structure");
    }

    @Override
    public final Object put(Integer num, Object obj) {
        throw new C5417Jv0("Should not modify an immutable structure");
    }
}

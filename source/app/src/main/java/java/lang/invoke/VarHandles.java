package java.lang.invoke;

import java.lang.foreign.MemoryLayout;
import java.lang.invoke.MethodHandles;
import java.lang.invoke.VarHandle;
import java.lang.invoke.VarHandleBooleans;
import java.lang.invoke.VarHandleByteArrayAsChars;
import java.lang.invoke.VarHandleByteArrayAsDoubles;
import java.lang.invoke.VarHandleByteArrayAsFloats;
import java.lang.invoke.VarHandleByteArrayAsInts;
import java.lang.invoke.VarHandleByteArrayAsLongs;
import java.lang.invoke.VarHandleByteArrayAsShorts;
import java.lang.invoke.VarHandleBytes;
import java.lang.invoke.VarHandleChars;
import java.lang.invoke.VarHandleDoubles;
import java.lang.invoke.VarHandleFloats;
import java.lang.invoke.VarHandleInts;
import java.lang.invoke.VarHandleLongs;
import java.lang.invoke.VarHandleReferences;
import java.lang.invoke.VarHandleShorts;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.stream.Stream;
import jdk.internal.misc.CDS;
import sun.invoke.util.Wrapper;

public final class VarHandles {
    static final boolean $assertionsDisabled;

    VarHandles() {
    }

    static {
        $assertionsDisabled = !VarHandles.class.desiredAssertionStatus();
    }

    public static VarHandle makeFieldHandle(MemberName f10, Class<?> refc, boolean isWriteAllowedOnFinalFields) {
        VarHandle lazyInitializingVarHandle;
        VarHandle fieldInstanceReadWrite;
        VarHandle fieldInstanceReadWrite2;
        VarHandle fieldInstanceReadWrite3;
        VarHandle fieldInstanceReadWrite4;
        VarHandle fieldInstanceReadWrite5;
        VarHandle fieldInstanceReadWrite6;
        VarHandle fieldInstanceReadWrite7;
        VarHandle fieldInstanceReadWrite8;
        VarHandle fieldInstanceReadWrite9;
        if (!f10.isStatic()) {
            long foffset = MethodHandleNatives.objectFieldOffset(f10);
            Class<?> type = f10.getFieldType();
            if (!type.isPrimitive()) {
                if (f10.isFinal() && !isWriteAllowedOnFinalFields) {
                    fieldInstanceReadWrite9 = new VarHandleReferences.FieldInstanceReadOnly(refc, foffset, type);
                } else {
                    fieldInstanceReadWrite9 = new VarHandleReferences.FieldInstanceReadWrite(refc, foffset, type);
                }
                return maybeAdapt(fieldInstanceReadWrite9);
            }
            if (type == Boolean.TYPE) {
                if (f10.isFinal() && !isWriteAllowedOnFinalFields) {
                    fieldInstanceReadWrite8 = new VarHandleBooleans.FieldInstanceReadOnly(refc, foffset);
                } else {
                    fieldInstanceReadWrite8 = new VarHandleBooleans.FieldInstanceReadWrite(refc, foffset);
                }
                return maybeAdapt(fieldInstanceReadWrite8);
            }
            if (type == Byte.TYPE) {
                if (f10.isFinal() && !isWriteAllowedOnFinalFields) {
                    fieldInstanceReadWrite7 = new VarHandleBytes.FieldInstanceReadOnly(refc, foffset);
                } else {
                    fieldInstanceReadWrite7 = new VarHandleBytes.FieldInstanceReadWrite(refc, foffset);
                }
                return maybeAdapt(fieldInstanceReadWrite7);
            }
            if (type == Short.TYPE) {
                if (f10.isFinal() && !isWriteAllowedOnFinalFields) {
                    fieldInstanceReadWrite6 = new VarHandleShorts.FieldInstanceReadOnly(refc, foffset);
                } else {
                    fieldInstanceReadWrite6 = new VarHandleShorts.FieldInstanceReadWrite(refc, foffset);
                }
                return maybeAdapt(fieldInstanceReadWrite6);
            }
            if (type == Character.TYPE) {
                if (f10.isFinal() && !isWriteAllowedOnFinalFields) {
                    fieldInstanceReadWrite5 = new VarHandleChars.FieldInstanceReadOnly(refc, foffset);
                } else {
                    fieldInstanceReadWrite5 = new VarHandleChars.FieldInstanceReadWrite(refc, foffset);
                }
                return maybeAdapt(fieldInstanceReadWrite5);
            }
            if (type == Integer.TYPE) {
                if (f10.isFinal() && !isWriteAllowedOnFinalFields) {
                    fieldInstanceReadWrite4 = new VarHandleInts.FieldInstanceReadOnly(refc, foffset);
                } else {
                    fieldInstanceReadWrite4 = new VarHandleInts.FieldInstanceReadWrite(refc, foffset);
                }
                return maybeAdapt(fieldInstanceReadWrite4);
            }
            if (type == Long.TYPE) {
                if (f10.isFinal() && !isWriteAllowedOnFinalFields) {
                    fieldInstanceReadWrite3 = new VarHandleLongs.FieldInstanceReadOnly(refc, foffset);
                } else {
                    fieldInstanceReadWrite3 = new VarHandleLongs.FieldInstanceReadWrite(refc, foffset);
                }
                return maybeAdapt(fieldInstanceReadWrite3);
            }
            if (type == Float.TYPE) {
                if (f10.isFinal() && !isWriteAllowedOnFinalFields) {
                    fieldInstanceReadWrite2 = new VarHandleFloats.FieldInstanceReadOnly(refc, foffset);
                } else {
                    fieldInstanceReadWrite2 = new VarHandleFloats.FieldInstanceReadWrite(refc, foffset);
                }
                return maybeAdapt(fieldInstanceReadWrite2);
            }
            if (type == Double.TYPE) {
                if (f10.isFinal() && !isWriteAllowedOnFinalFields) {
                    fieldInstanceReadWrite = new VarHandleDoubles.FieldInstanceReadOnly(refc, foffset);
                } else {
                    fieldInstanceReadWrite = new VarHandleDoubles.FieldInstanceReadWrite(refc, foffset);
                }
                return maybeAdapt(fieldInstanceReadWrite);
            }
            throw new UnsupportedOperationException();
        }
        Class<?> decl = f10.getDeclaringClass();
        VarHandle vh2 = makeStaticFieldVarHandle(decl, f10, isWriteAllowedOnFinalFields);
        if (MethodHandleStatics.UNSAFE.shouldBeInitialized(decl) || CDS.needsClassInitBarrier(decl)) {
            lazyInitializingVarHandle = new LazyInitializingVarHandle(vh2, decl);
        } else {
            lazyInitializingVarHandle = vh2;
        }
        return maybeAdapt(lazyInitializingVarHandle);
    }

    static VarHandle makeStaticFieldVarHandle(Class<?> decl, MemberName f10, boolean isWriteAllowedOnFinalFields) {
        VarHandle fieldStaticReadWrite;
        VarHandle fieldStaticReadWrite2;
        VarHandle fieldStaticReadWrite3;
        VarHandle fieldStaticReadWrite4;
        VarHandle fieldStaticReadWrite5;
        VarHandle fieldStaticReadWrite6;
        VarHandle fieldStaticReadWrite7;
        VarHandle fieldStaticReadWrite8;
        VarHandle fieldStaticReadWrite9;
        Object base = MethodHandleNatives.staticFieldBase(f10);
        long foffset = MethodHandleNatives.staticFieldOffset(f10);
        Class<?> type = f10.getFieldType();
        if (!type.isPrimitive()) {
            if (f10.isFinal() && !isWriteAllowedOnFinalFields) {
                fieldStaticReadWrite9 = new VarHandleReferences.FieldStaticReadOnly(decl, base, foffset, type);
            } else {
                fieldStaticReadWrite9 = new VarHandleReferences.FieldStaticReadWrite(decl, base, foffset, type);
            }
            return maybeAdapt(fieldStaticReadWrite9);
        }
        if (type == Boolean.TYPE) {
            if (f10.isFinal() && !isWriteAllowedOnFinalFields) {
                fieldStaticReadWrite8 = new VarHandleBooleans.FieldStaticReadOnly(decl, base, foffset);
            } else {
                fieldStaticReadWrite8 = new VarHandleBooleans.FieldStaticReadWrite(decl, base, foffset);
            }
            return maybeAdapt(fieldStaticReadWrite8);
        }
        if (type == Byte.TYPE) {
            if (f10.isFinal() && !isWriteAllowedOnFinalFields) {
                fieldStaticReadWrite7 = new VarHandleBytes.FieldStaticReadOnly(decl, base, foffset);
            } else {
                fieldStaticReadWrite7 = new VarHandleBytes.FieldStaticReadWrite(decl, base, foffset);
            }
            return maybeAdapt(fieldStaticReadWrite7);
        }
        if (type == Short.TYPE) {
            if (f10.isFinal() && !isWriteAllowedOnFinalFields) {
                fieldStaticReadWrite6 = new VarHandleShorts.FieldStaticReadOnly(decl, base, foffset);
            } else {
                fieldStaticReadWrite6 = new VarHandleShorts.FieldStaticReadWrite(decl, base, foffset);
            }
            return maybeAdapt(fieldStaticReadWrite6);
        }
        if (type == Character.TYPE) {
            if (f10.isFinal() && !isWriteAllowedOnFinalFields) {
                fieldStaticReadWrite5 = new VarHandleChars.FieldStaticReadOnly(decl, base, foffset);
            } else {
                fieldStaticReadWrite5 = new VarHandleChars.FieldStaticReadWrite(decl, base, foffset);
            }
            return maybeAdapt(fieldStaticReadWrite5);
        }
        if (type == Integer.TYPE) {
            if (f10.isFinal() && !isWriteAllowedOnFinalFields) {
                fieldStaticReadWrite4 = new VarHandleInts.FieldStaticReadOnly(decl, base, foffset);
            } else {
                fieldStaticReadWrite4 = new VarHandleInts.FieldStaticReadWrite(decl, base, foffset);
            }
            return maybeAdapt(fieldStaticReadWrite4);
        }
        if (type == Long.TYPE) {
            if (f10.isFinal() && !isWriteAllowedOnFinalFields) {
                fieldStaticReadWrite3 = new VarHandleLongs.FieldStaticReadOnly(decl, base, foffset);
            } else {
                fieldStaticReadWrite3 = new VarHandleLongs.FieldStaticReadWrite(decl, base, foffset);
            }
            return maybeAdapt(fieldStaticReadWrite3);
        }
        if (type == Float.TYPE) {
            if (f10.isFinal() && !isWriteAllowedOnFinalFields) {
                fieldStaticReadWrite2 = new VarHandleFloats.FieldStaticReadOnly(decl, base, foffset);
            } else {
                fieldStaticReadWrite2 = new VarHandleFloats.FieldStaticReadWrite(decl, base, foffset);
            }
            return maybeAdapt(fieldStaticReadWrite2);
        }
        if (type == Double.TYPE) {
            if (f10.isFinal() && !isWriteAllowedOnFinalFields) {
                fieldStaticReadWrite = new VarHandleDoubles.FieldStaticReadOnly(decl, base, foffset);
            } else {
                fieldStaticReadWrite = new VarHandleDoubles.FieldStaticReadWrite(decl, base, foffset);
            }
            return maybeAdapt(fieldStaticReadWrite);
        }
        throw new UnsupportedOperationException();
    }

    public static Field getFieldFromReceiverAndOffset(Class<?> receiverType, long offset, Class<?> fieldType) {
        for (Field f10 : receiverType.getDeclaredFields()) {
            if (!Modifier.isStatic(f10.getModifiers()) && offset == MethodHandleStatics.UNSAFE.objectFieldOffset(f10)) {
                if ($assertionsDisabled || f10.getType() == fieldType) {
                    return f10;
                }
                throw new AssertionError();
            }
        }
        throw new InternalError("Field not found at offset");
    }

    public static Field getStaticFieldFromBaseAndOffset(Class<?> declaringClass, long offset, Class<?> fieldType) {
        for (Field f10 : declaringClass.getDeclaredFields()) {
            if (Modifier.isStatic(f10.getModifiers()) && offset == MethodHandleStatics.UNSAFE.staticFieldOffset(f10)) {
                if ($assertionsDisabled || f10.getType() == fieldType) {
                    return f10;
                }
                throw new AssertionError();
            }
        }
        throw new InternalError("Static field not found at offset");
    }

    public static VarHandle makeArrayElementHandle(Class<?> arrayClass) {
        if (!arrayClass.isArray()) {
            throw new IllegalArgumentException("not an array: " + ((Object) arrayClass));
        }
        Class<?> componentType = arrayClass.getComponentType();
        int aoffset = (int) MethodHandleStatics.UNSAFE.arrayBaseOffset(arrayClass);
        int ascale = MethodHandleStatics.UNSAFE.arrayIndexScale(arrayClass);
        int ashift = 31 - Integer.numberOfLeadingZeros(ascale);
        if (!componentType.isPrimitive()) {
            return maybeAdapt(new VarHandleReferences.Array(aoffset, ashift, arrayClass));
        }
        if (componentType == Boolean.TYPE) {
            return maybeAdapt(new VarHandleBooleans.Array(aoffset, ashift));
        }
        if (componentType == Byte.TYPE) {
            return maybeAdapt(new VarHandleBytes.Array(aoffset, ashift));
        }
        if (componentType == Short.TYPE) {
            return maybeAdapt(new VarHandleShorts.Array(aoffset, ashift));
        }
        if (componentType == Character.TYPE) {
            return maybeAdapt(new VarHandleChars.Array(aoffset, ashift));
        }
        if (componentType == Integer.TYPE) {
            return maybeAdapt(new VarHandleInts.Array(aoffset, ashift));
        }
        if (componentType == Long.TYPE) {
            return maybeAdapt(new VarHandleLongs.Array(aoffset, ashift));
        }
        if (componentType == Float.TYPE) {
            return maybeAdapt(new VarHandleFloats.Array(aoffset, ashift));
        }
        if (componentType == Double.TYPE) {
            return maybeAdapt(new VarHandleDoubles.Array(aoffset, ashift));
        }
        throw new UnsupportedOperationException();
    }

    public static VarHandle byteArrayViewHandle(Class<?> viewArrayClass, boolean be2) {
        if (!viewArrayClass.isArray()) {
            throw new IllegalArgumentException("not an array: " + ((Object) viewArrayClass));
        }
        Class<?> viewComponentType = viewArrayClass.getComponentType();
        if (viewComponentType == Long.TYPE) {
            return maybeAdapt(new VarHandleByteArrayAsLongs.ArrayHandle(be2));
        }
        if (viewComponentType == Integer.TYPE) {
            return maybeAdapt(new VarHandleByteArrayAsInts.ArrayHandle(be2));
        }
        if (viewComponentType == Short.TYPE) {
            return maybeAdapt(new VarHandleByteArrayAsShorts.ArrayHandle(be2));
        }
        if (viewComponentType == Character.TYPE) {
            return maybeAdapt(new VarHandleByteArrayAsChars.ArrayHandle(be2));
        }
        if (viewComponentType == Double.TYPE) {
            return maybeAdapt(new VarHandleByteArrayAsDoubles.ArrayHandle(be2));
        }
        if (viewComponentType == Float.TYPE) {
            return maybeAdapt(new VarHandleByteArrayAsFloats.ArrayHandle(be2));
        }
        throw new UnsupportedOperationException();
    }

    public static VarHandle makeByteBufferViewHandle(Class<?> viewArrayClass, boolean be2) {
        if (!viewArrayClass.isArray()) {
            throw new IllegalArgumentException("not an array: " + ((Object) viewArrayClass));
        }
        Class<?> viewComponentType = viewArrayClass.getComponentType();
        if (viewComponentType == Long.TYPE) {
            return maybeAdapt(new VarHandleByteArrayAsLongs.ByteBufferHandle(be2));
        }
        if (viewComponentType == Integer.TYPE) {
            return maybeAdapt(new VarHandleByteArrayAsInts.ByteBufferHandle(be2));
        }
        if (viewComponentType == Short.TYPE) {
            return maybeAdapt(new VarHandleByteArrayAsShorts.ByteBufferHandle(be2));
        }
        if (viewComponentType == Character.TYPE) {
            return maybeAdapt(new VarHandleByteArrayAsChars.ByteBufferHandle(be2));
        }
        if (viewComponentType == Double.TYPE) {
            return maybeAdapt(new VarHandleByteArrayAsDoubles.ByteBufferHandle(be2));
        }
        if (viewComponentType == Float.TYPE) {
            return maybeAdapt(new VarHandleByteArrayAsFloats.ByteBufferHandle(be2));
        }
        throw new UnsupportedOperationException();
    }

    public static VarHandle memorySegmentViewHandle(Class<?> carrier, MemoryLayout enclosing, long alignmentMask, boolean constantOffset, long offset, ByteOrder byteOrder) {
        VarForm form;
        if (!carrier.isPrimitive() || carrier == Void.TYPE) {
            throw new IllegalArgumentException("Invalid carrier: " + carrier.getName());
        }
        boolean be2 = byteOrder == ByteOrder.BIG_ENDIAN;
        boolean exact = MethodHandleStatics.VAR_HANDLE_SEGMENT_FORCE_EXACT;
        if (carrier == Byte.TYPE) {
            form = VarHandleSegmentAsBytes.selectForm(alignmentMask, constantOffset);
        } else if (carrier == Character.TYPE) {
            form = VarHandleSegmentAsChars.selectForm(alignmentMask, constantOffset);
        } else if (carrier == Short.TYPE) {
            form = VarHandleSegmentAsShorts.selectForm(alignmentMask, constantOffset);
        } else if (carrier == Integer.TYPE) {
            form = VarHandleSegmentAsInts.selectForm(alignmentMask, constantOffset);
        } else if (carrier == Float.TYPE) {
            form = VarHandleSegmentAsFloats.selectForm(alignmentMask, constantOffset);
        } else if (carrier == Long.TYPE) {
            form = VarHandleSegmentAsLongs.selectForm(alignmentMask, constantOffset);
        } else if (carrier == Double.TYPE) {
            form = VarHandleSegmentAsDoubles.selectForm(alignmentMask, constantOffset);
        } else if (carrier == Boolean.TYPE) {
            form = VarHandleSegmentAsBooleans.selectForm(alignmentMask, constantOffset);
        } else {
            throw new IllegalStateException("Cannot get here");
        }
        return maybeAdapt(new SegmentVarHandle(form, be2, enclosing, offset, exact));
    }

    private static VarHandle maybeAdapt(VarHandle target) {
        if (!MethodHandleStatics.VAR_HANDLE_IDENTITY_ADAPT) {
            return target;
        }
        VarHandle target2 = filterValue(target, MethodHandles.identity(target.varType()), MethodHandles.identity(target.varType()));
        MethodType mtype = target2.accessModeType(VarHandle.AccessMode.GET);
        for (int i10 = 0; i10 < mtype.parameterCount(); i10++) {
            target2 = filterCoordinates(target2, i10, MethodHandles.identity(mtype.parameterType(i10)));
        }
        return target2;
    }

    public static VarHandle filterValue(VarHandle target, MethodHandle pFilterToTarget, MethodHandle pFilterFromTarget) {
        Objects.requireNonNull(target);
        Objects.requireNonNull(pFilterToTarget);
        Objects.requireNonNull(pFilterFromTarget);
        MethodHandle filterToTarget = adaptForCheckedExceptions(pFilterToTarget);
        MethodHandle filterFromTarget = adaptForCheckedExceptions(pFilterFromTarget);
        List<Class<?>> newCoordinates = new ArrayList<>();
        List<Class<?>> additionalCoordinates = new ArrayList<>();
        newCoordinates.addAll(target.coordinateTypes());
        if (filterFromTarget.type().parameterCount() != filterToTarget.type().parameterCount()) {
            throw MethodHandleStatics.newIllegalArgumentException("filterFromTarget and filterToTarget have different arity", filterFromTarget.type(), filterToTarget.type());
        }
        if (filterFromTarget.type().parameterCount() < 1) {
            throw MethodHandleStatics.newIllegalArgumentException("filterFromTarget filter type has wrong arity", filterFromTarget.type());
        }
        if (filterToTarget.type().parameterCount() < 1) {
            throw MethodHandleStatics.newIllegalArgumentException("filterToTarget filter type has wrong arity", filterFromTarget.type());
        }
        if (filterFromTarget.type().lastParameterType() != filterToTarget.type().returnType() || filterToTarget.type().lastParameterType() != filterFromTarget.type().returnType()) {
            throw MethodHandleStatics.newIllegalArgumentException("filterFromTarget and filterToTarget filter types do not match", filterFromTarget.type(), filterToTarget.type());
        }
        if (target.varType() != filterFromTarget.type().lastParameterType()) {
            throw MethodHandleStatics.newIllegalArgumentException("filterFromTarget filter type does not match target var handle type", filterFromTarget.type(), target.varType());
        }
        if (target.varType() != filterToTarget.type().returnType()) {
            throw MethodHandleStatics.newIllegalArgumentException("filterFromTarget filter type does not match target var handle type", filterToTarget.type(), target.varType());
        }
        if (filterFromTarget.type().parameterCount() > 1) {
            for (int i10 = 0; i10 < filterFromTarget.type().parameterCount() - 1; i10++) {
                if (filterFromTarget.type().parameterType(i10) != filterToTarget.type().parameterType(i10)) {
                    throw MethodHandleStatics.newIllegalArgumentException("filterFromTarget and filterToTarget filter types do not match", filterFromTarget.type(), filterToTarget.type());
                }
                newCoordinates.add(filterFromTarget.type().parameterType(i10));
                additionalCoordinates.add(filterFromTarget.type().parameterType(i10));
            }
        }
        return new IndirectVarHandle(target, filterFromTarget.type().returnType(), (Class[]) newCoordinates.toArray(new Class[0]), (mode, modeHandle) -> {
            int lastParameterPos = modeHandle.type().parameterCount() - 1;
            switch (mode.at) {
                case GET:
                    return MethodHandles.collectReturnValue(modeHandle, filterFromTarget);
                case SET:
                    return MethodHandles.collectArguments(modeHandle, lastParameterPos, filterToTarget);
                case GET_AND_UPDATE:
                    MethodHandle adapter = MethodHandles.collectReturnValue(modeHandle, filterFromTarget);
                    MethodHandle res = MethodHandles.collectArguments(adapter, lastParameterPos, filterToTarget);
                    if (additionalCoordinates.size() > 0) {
                        res = joinDuplicateArgs(res, lastParameterPos, lastParameterPos + additionalCoordinates.size() + 1, additionalCoordinates.size());
                    }
                    return res;
                case COMPARE_AND_EXCHANGE:
                    MethodHandle adapter2 = MethodHandles.collectReturnValue(modeHandle, filterFromTarget);
                    MethodHandle adapter3 = MethodHandles.collectArguments(adapter2, lastParameterPos, filterToTarget);
                    if (additionalCoordinates.size() > 0) {
                        adapter3 = joinDuplicateArgs(adapter3, lastParameterPos, lastParameterPos + additionalCoordinates.size() + 1, additionalCoordinates.size());
                    }
                    MethodHandle res2 = MethodHandles.collectArguments(adapter3, lastParameterPos - 1, filterToTarget);
                    if (additionalCoordinates.size() > 0) {
                        res2 = joinDuplicateArgs(res2, lastParameterPos - 1, lastParameterPos + additionalCoordinates.size(), additionalCoordinates.size());
                    }
                    return res2;
                case COMPARE_AND_SET:
                    MethodHandle adapter4 = MethodHandles.collectArguments(modeHandle, lastParameterPos, filterToTarget);
                    MethodHandle res3 = MethodHandles.collectArguments(adapter4, lastParameterPos - 1, filterToTarget);
                    if (additionalCoordinates.size() > 0) {
                        res3 = joinDuplicateArgs(res3, lastParameterPos - 1, lastParameterPos + additionalCoordinates.size(), additionalCoordinates.size());
                    }
                    return res3;
                default:
                    throw new MatchException(null, null);
            }
        });
    }

    private static MethodHandle joinDuplicateArgs(MethodHandle handle, int originalStart, int dropStart, int length) {
        int[] perms = new int[handle.type().parameterCount()];
        for (int i10 = 0; i10 < dropStart; i10++) {
            perms[i10] = i10;
        }
        for (int i11 = 0; i11 < length; i11++) {
            perms[dropStart + i11] = originalStart + i11;
        }
        for (int i12 = dropStart + length; i12 < perms.length; i12++) {
            perms[i12] = i12 - length;
        }
        return MethodHandles.permuteArguments(handle, handle.type().dropParameterTypes(dropStart, dropStart + length), perms);
    }

    public static VarHandle filterCoordinates(VarHandle target, int pos, MethodHandle... filters) {
        Objects.requireNonNull(target);
        Objects.requireNonNull(filters);
        List<Class<?>> targetCoordinates = target.coordinateTypes();
        if (pos < 0 || pos >= targetCoordinates.size()) {
            throw MethodHandleStatics.newIllegalArgumentException("Invalid position " + pos + " for coordinate types", targetCoordinates);
        }
        if (pos + filters.length > targetCoordinates.size()) {
            throw new IllegalArgumentException("Too many filters");
        }
        if (filters.length == 0) {
            return target;
        }
        List<Class<?>> newCoordinates = new ArrayList<>(targetCoordinates);
        for (int i10 = 0; i10 < filters.length; i10++) {
            MethodHandle filter = (MethodHandle) Objects.requireNonNull(filters[i10]);
            MethodType filterType = adaptForCheckedExceptions(filter).type();
            if (filterType.parameterCount() != 1) {
                throw MethodHandleStatics.newIllegalArgumentException("Invalid filter type " + ((Object) filterType));
            }
            if (newCoordinates.get(pos + i10) != filterType.returnType()) {
                throw MethodHandleStatics.newIllegalArgumentException("Invalid filter type " + ((Object) filterType) + " for coordinate type " + ((Object) newCoordinates.get(i10)));
            }
            newCoordinates.set(pos + i10, filters[i10].type().parameterType(0));
        }
        return new IndirectVarHandle(target, target.varType(), (Class[]) newCoordinates.toArray(new Class[0]), (mode, modeHandle) -> {
            return MethodHandles.filterArguments(modeHandle, 1 + pos, filters);
        });
    }

    public static VarHandle insertCoordinates(VarHandle target, int pos, Object... values) {
        Objects.requireNonNull(target);
        Objects.requireNonNull(values);
        List<Class<?>> targetCoordinates = target.coordinateTypes();
        if (pos < 0 || pos >= targetCoordinates.size()) {
            throw MethodHandleStatics.newIllegalArgumentException("Invalid position " + pos + " for coordinate types", targetCoordinates);
        }
        if (pos + values.length > targetCoordinates.size()) {
            throw new IllegalArgumentException("Too many values");
        }
        if (values.length == 0) {
            return target;
        }
        List<Class<?>> newCoordinates = new ArrayList<>(targetCoordinates);
        for (int i10 = 0; i10 < values.length; i10++) {
            Class<?> pt = newCoordinates.get(pos);
            if (pt.isPrimitive()) {
                Wrapper w10 = Wrapper.forPrimitiveType(pt);
                w10.convert(values[i10], pt);
            } else {
                pt.cast(values[i10]);
            }
            newCoordinates.remove(pos);
        }
        return new IndirectVarHandle(target, target.varType(), (Class[]) newCoordinates.toArray(new Class[0]), (mode, modeHandle) -> {
            return MethodHandles.insertArguments(modeHandle, 1 + pos, values);
        });
    }

    public static VarHandle permuteCoordinates(VarHandle target, List<Class<?>> newCoordinates, int... reorder) {
        Objects.requireNonNull(target);
        Objects.requireNonNull(newCoordinates);
        Objects.requireNonNull(reorder);
        List<Class<?>> targetCoordinates = target.coordinateTypes();
        MethodHandles.permuteArgumentChecks(reorder, MethodType.methodType(Void.TYPE, newCoordinates), MethodType.methodType(Void.TYPE, targetCoordinates));
        return new IndirectVarHandle(target, target.varType(), (Class[]) newCoordinates.toArray(new Class[0]), (mode, modeHandle) -> {
            return MethodHandles.permuteArguments(modeHandle, methodTypeFor(mode.at, modeHandle.type(), targetCoordinates, newCoordinates), reorderArrayFor(mode.at, newCoordinates, reorder));
        });
    }

    private static int numTrailingArgs(VarHandle.AccessType at) {
        switch (at) {
            case GET:
                return 0;
            case SET:
            case GET_AND_UPDATE:
                return 1;
            case COMPARE_AND_EXCHANGE:
            case COMPARE_AND_SET:
                return 2;
            default:
                throw new MatchException(null, null);
        }
    }

    private static int[] reorderArrayFor(VarHandle.AccessType at, List<Class<?>> newCoordinates, int[] reorder) {
        int numTrailingArgs = numTrailingArgs(at);
        int[] adjustedReorder = new int[reorder.length + 1 + numTrailingArgs];
        adjustedReorder[0] = 0;
        for (int i10 = 0; i10 < reorder.length; i10++) {
            adjustedReorder[i10 + 1] = reorder[i10] + 1;
        }
        for (int i11 = 0; i11 < numTrailingArgs; i11++) {
            adjustedReorder[i11 + reorder.length + 1] = i11 + newCoordinates.size() + 1;
        }
        return adjustedReorder;
    }

    private static MethodType methodTypeFor(VarHandle.AccessType at, MethodType oldType, List<Class<?>> oldCoordinates, List<Class<?>> newCoordinates) {
        int numTrailingArgs = numTrailingArgs(at);
        MethodType adjustedType = MethodType.methodType(oldType.returnType(), oldType.parameterType(0));
        MethodType adjustedType2 = adjustedType.appendParameterTypes(newCoordinates);
        for (int i10 = 0; i10 < numTrailingArgs; i10++) {
            adjustedType2 = adjustedType2.appendParameterTypes(oldType.parameterType(1 + oldCoordinates.size() + i10));
        }
        return adjustedType2;
    }

    public static VarHandle collectCoordinates(VarHandle target, int pos, MethodHandle pFilter) {
        Objects.requireNonNull(target);
        Objects.requireNonNull(pFilter);
        MethodHandle filter = adaptForCheckedExceptions(pFilter);
        List<Class<?>> targetCoordinates = target.coordinateTypes();
        if (pos < 0 || pos >= targetCoordinates.size()) {
            throw MethodHandleStatics.newIllegalArgumentException("Invalid position " + pos + " for coordinate types", targetCoordinates);
        }
        if (filter.type().returnType() != Void.TYPE && filter.type().returnType() != targetCoordinates.get(pos)) {
            throw MethodHandleStatics.newIllegalArgumentException("Invalid filter type " + ((Object) filter.type()) + " for coordinate type " + ((Object) targetCoordinates.get(pos)));
        }
        List<Class<?>> newCoordinates = new ArrayList<>(targetCoordinates);
        if (filter.type().returnType() != Void.TYPE) {
            newCoordinates.remove(pos);
        }
        newCoordinates.addAll(pos, filter.type().parameterList());
        return new IndirectVarHandle(target, target.varType(), (Class[]) newCoordinates.toArray(new Class[0]), (mode, modeHandle) -> {
            return MethodHandles.collectArguments(modeHandle, 1 + pos, filter);
        });
    }

    public static VarHandle dropCoordinates(VarHandle target, int pos, Class<?>... valueTypes) {
        Objects.requireNonNull(target);
        Objects.requireNonNull(valueTypes);
        List<Class<?>> targetCoordinates = target.coordinateTypes();
        if (pos < 0 || pos > targetCoordinates.size()) {
            throw MethodHandleStatics.newIllegalArgumentException("Invalid position " + pos + " for coordinate types", targetCoordinates);
        }
        if (valueTypes.length == 0) {
            return target;
        }
        List<Class<?>> newCoordinates = new ArrayList<>(targetCoordinates);
        newCoordinates.addAll(pos, List.of(valueTypes));
        return new IndirectVarHandle(target, target.varType(), (Class[]) newCoordinates.toArray(new Class[0]), (mode, modeHandle) -> {
            return MethodHandles.dropArguments(modeHandle, 1 + pos, (Class<?>[]) valueTypes);
        });
    }

    private static MethodHandle adaptForCheckedExceptions(MethodHandle target) {
        Class<?>[] exceptionTypes = exceptionTypes(target);
        if (exceptionTypes != null) {
            if (Stream.of((Object[]) exceptionTypes).anyMatch(VarHandles::isCheckedException)) {
                throw MethodHandleStatics.newIllegalArgumentException("Cannot adapt a var handle with a method handle which throws checked exceptions");
            }
            return target;
        }
        MethodHandle handler = MethodHandleImpl.getConstantHandle(8);
        MethodHandle zero = MethodHandles.zero(target.type().returnType());
        return MethodHandles.catchException(target, Throwable.class, MethodHandles.collectArguments(zero, 0, handler));
    }

    static void handleCheckedExceptions(Throwable throwable) throws Throwable {
        if (isCheckedException(throwable.getClass())) {
            throw new IllegalStateException("Adapter handle threw checked exception", throwable);
        }
        throw throwable;
    }

    public static Class<?>[] exceptionTypes(MethodHandle handle) {
        if (handle instanceof DirectMethodHandle) {
            DirectMethodHandle directHandle = (DirectMethodHandle) handle;
            byte refKind = directHandle.member.getReferenceKind();
            MethodHandleInfo info = new InfoFromMemberName(MethodHandles.Lookup.IMPL_LOOKUP, directHandle.member, refKind);
            if (MethodHandleNatives.refKindIsMethod(refKind)) {
                return ((Method) info.reflectAs(Method.class, MethodHandles.Lookup.IMPL_LOOKUP)).getExceptionTypes();
            }
            if (MethodHandleNatives.refKindIsField(refKind)) {
                return new Class[0];
            }
            if (MethodHandleNatives.refKindIsConstructor(refKind)) {
                return ((Constructor) info.reflectAs(Constructor.class, MethodHandles.Lookup.IMPL_LOOKUP)).getExceptionTypes();
            }
            throw new AssertionError((Object) "Cannot get here");
        }
        if (handle instanceof DelegatingMethodHandle) {
            DelegatingMethodHandle delegatingMh = (DelegatingMethodHandle) handle;
            return exceptionTypes(delegatingMh.getTarget());
        }
        if (handle instanceof NativeMethodHandle) {
            return new Class[0];
        }
        if ($assertionsDisabled || (handle instanceof BoundMethodHandle)) {
            return null;
        }
        throw new AssertionError((Object) ("Unexpected handle type: " + ((Object) handle)));
    }

    private static boolean isCheckedException(Class<?> clazz) {
        return (!Throwable.class.isAssignableFrom(clazz) || RuntimeException.class.isAssignableFrom(clazz) || Error.class.isAssignableFrom(clazz)) ? false : true;
    }
}

package org.openjdk.tools.javac.comp;

import java.util.HashMap;
import java.util.Map;
import java.util.Optional;
import java.util.function.BiPredicate;
import java.util.function.Function;
import java.util.function.IntFunction;
import java.util.function.Predicate;
import java.util.function.Supplier;
import java.util.stream.Stream;
import org.openjdk.tools.javac.code.Symbol;
import org.openjdk.tools.javac.code.Symtab;
import org.openjdk.tools.javac.code.Type;
import org.openjdk.tools.javac.code.TypeTag;
import org.openjdk.tools.javac.code.Types;
import org.openjdk.tools.javac.comp.Operators;
import org.openjdk.tools.javac.resources.CompilerProperties;
import org.openjdk.tools.javac.tree.JCTree;
import org.openjdk.tools.javac.util.Assert;
import org.openjdk.tools.javac.util.Context;
import org.openjdk.tools.javac.util.JCDiagnostic;
import org.openjdk.tools.javac.util.List;
import org.openjdk.tools.javac.util.Log;
import org.openjdk.tools.javac.util.Name;
import org.openjdk.tools.javac.util.Names;

public class Operators {
    protected static final Context.Key<Operators> operatorsKey = new Context.Key<>();
    private final Log log;
    private final Names names;
    public final Symbol.OperatorSymbol noOpSymbol;
    private final Symtab syms;
    private final Types types;
    private Map<Name, List<UnaryOperatorHelper>> unaryOperators = new HashMap(JCTree.Tag.getNumberOfOperators());
    private Map<Name, List<BinaryOperatorHelper>> binaryOperators = new HashMap(JCTree.Tag.getNumberOfOperators());
    private Name[] opname = new Name[JCTree.Tag.getNumberOfOperators()];

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$com$sun$tools$javac$code$TypeTag;

        static {
            int[] iArr = new int[TypeTag.values().length];
            $SwitchMap$com$sun$tools$javac$code$TypeTag = iArr;
            try {
                iArr[TypeTag.BYTE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.SHORT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$code$TypeTag[TypeTag.CHAR.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public class BinaryBooleanOperator extends BinaryOperatorHelper {
        public BinaryBooleanOperator(JCTree.Tag tag) {
            super(tag);
        }

        @Override
        public Symbol.OperatorSymbol resolve(Type type, Type type2) {
            return doLookup(Operators.this.syms.booleanType, Operators.this.syms.booleanType);
        }

        @Override
        public boolean test(Type type, Type type2) {
            Type unboxedTypeOrType = Operators.this.types.unboxedTypeOrType(type);
            TypeTag typeTag = TypeTag.BOOLEAN;
            return unboxedTypeOrType.hasTag(typeTag) && Operators.this.types.unboxedTypeOrType(type2).hasTag(typeTag);
        }
    }

    public class BinaryEqualityOperator extends BinaryOperatorHelper {
        public BinaryEqualityOperator(JCTree.Tag tag) {
            super(tag);
        }

        private ComparisonKind getKind(Type type, Type type2) {
            boolean isPrimitive = type.isPrimitive();
            boolean isPrimitive2 = type2.isPrimitive();
            return (isPrimitive && isPrimitive2) ? ComparisonKind.NUMERIC_OR_BOOLEAN : isPrimitive ? Operators.this.unaryPromotion(type2).isPrimitive() ? ComparisonKind.NUMERIC_OR_BOOLEAN : ComparisonKind.INVALID : isPrimitive2 ? Operators.this.unaryPromotion(type).isPrimitive() ? ComparisonKind.NUMERIC_OR_BOOLEAN : ComparisonKind.INVALID : (type.isNullOrReference() && type2.isNullOrReference()) ? ComparisonKind.REFERENCE : ComparisonKind.INVALID;
        }

        @Override
        public Symbol.OperatorSymbol resolve(Type type, Type type2) {
            Type binaryPromotion = getKind(type, type2) == ComparisonKind.NUMERIC_OR_BOOLEAN ? Operators.this.binaryPromotion(type, type2) : Operators.this.syms.objectType;
            return doLookup(binaryPromotion, binaryPromotion);
        }

        @Override
        public boolean test(Type type, Type type2) {
            return getKind(type, type2) != ComparisonKind.INVALID;
        }
    }

    public class BinaryNumericOperator extends BinaryOperatorHelper {
        Predicate<Type> numericTest;

        public BinaryNumericOperator(Operators operators, JCTree.Tag tag) {
            this(tag, new D1());
        }

        @Override
        public Symbol.OperatorSymbol resolve(Type type, Type type2) {
            Type binaryPromotion = Operators.this.binaryPromotion(type, type2);
            return doLookup(binaryPromotion, binaryPromotion);
        }

        public BinaryNumericOperator(JCTree.Tag tag, Predicate<Type> predicate) {
            super(tag);
            this.numericTest = predicate;
        }

        @Override
        public boolean test(Type type, Type type2) {
            return this.numericTest.test(Operators.this.unaryPromotion(type)) && this.numericTest.test(Operators.this.unaryPromotion(type2));
        }
    }

    public abstract class BinaryOperatorHelper extends OperatorHelper implements BiPredicate<Type, Type> {
        public BinaryOperatorHelper(JCTree.Tag tag) {
            super(tag);
        }

        public Symbol.OperatorSymbol lambda$addBinaryOperator$1(OperatorType operatorType, OperatorType operatorType2, OperatorType operatorType3, int[] iArr) {
            return Operators.this.makeOperator(this.name, List.of(operatorType, operatorType2), operatorType3, iArr);
        }

        public final BinaryOperatorHelper addBinaryOperator(final OperatorType operatorType, final OperatorType operatorType2, final OperatorType operatorType3, final int... iArr) {
            this.operatorSuppliers = this.operatorSuppliers.prepend(new Supplier() {
                @Override
                public final Object get() {
                    Symbol.OperatorSymbol lambda$addBinaryOperator$1;
                    lambda$addBinaryOperator$1 = Operators.BinaryOperatorHelper.this.lambda$addBinaryOperator$1(operatorType, operatorType2, operatorType3, iArr);
                    return lambda$addBinaryOperator$1;
                }
            });
            return this;
        }

        public final Symbol.OperatorSymbol doLookup(final Type type, final Type type2) {
            return doLookup(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    boolean lambda$doLookup$0;
                    lambda$doLookup$0 = Operators.BinaryOperatorHelper.this.lambda$doLookup$0(type, type2, (Symbol.OperatorSymbol) obj);
                    return lambda$doLookup$0;
                }
            });
        }

        public boolean lambda$doLookup$0(Symbol.OperatorSymbol operatorSymbol, Type type, Type type2) {
            List<Type> parameterTypes = operatorSymbol.type.getParameterTypes();
            return Operators.this.types.isSameType(parameterTypes.head, type) && Operators.this.types.isSameType(parameterTypes.tail.head, type2);
        }

        public abstract Symbol.OperatorSymbol resolve(Type type, Type type2);
    }

    public class BinaryShiftOperator extends BinaryOperatorHelper {
        public BinaryShiftOperator(JCTree.Tag tag) {
            super(tag);
        }

        @Override
        public Symbol.OperatorSymbol resolve(Type type, Type type2) {
            return doLookup(Operators.this.unaryPromotion(type), Operators.this.unaryPromotion(type2));
        }

        @Override
        public boolean test(Type type, Type type2) {
            TypeTag tag = Operators.this.unaryPromotion(type).getTag();
            TypeTag tag2 = Operators.this.unaryPromotion(type2).getTag();
            TypeTag typeTag = TypeTag.LONG;
            return (tag == typeTag || tag == TypeTag.INT) && (tag2 == typeTag || tag2 == TypeTag.INT);
        }
    }

    public class BinaryStringOperator extends BinaryOperatorHelper {
        public BinaryStringOperator(JCTree.Tag tag) {
            super(tag);
        }

        private Type stringPromotion(Type type) {
            return type.isPrimitive() ? Operators.this.unaryPromotion(type) : (type.hasTag(TypeTag.VOID) || type.hasTag(TypeTag.BOT) || Operators.this.types.isSameType(type, Operators.this.syms.stringType)) ? type : type.hasTag(TypeTag.TYPEVAR) ? stringPromotion(type.getUpperBound()) : Operators.this.syms.objectType;
        }

        @Override
        public Symbol.OperatorSymbol resolve(Type type, Type type2) {
            return doLookup(stringPromotion(type), stringPromotion(type2));
        }

        @Override
        public boolean test(Type type, Type type2) {
            boolean z10 = Operators.this.types.isSameType(type, Operators.this.syms.stringType) || Operators.this.types.isSameType(type2, Operators.this.syms.stringType);
            TypeTag typeTag = TypeTag.VOID;
            return z10 && !(type.hasTag(typeTag) || type2.hasTag(typeTag));
        }
    }

    public enum ComparisonKind {
        NUMERIC_OR_BOOLEAN,
        REFERENCE,
        INVALID
    }

    public abstract class OperatorHelper {
        final Name name;
        Optional<Symbol.OperatorSymbol[]> alternatives = Optional.empty();
        List<Supplier<Symbol.OperatorSymbol>> operatorSuppliers = List.nil();

        public OperatorHelper(JCTree.Tag tag) {
            this.name = Operators.this.operatorName(tag);
        }

        public Symbol.OperatorSymbol[] initOperators() {
            Symbol.OperatorSymbol[] operatorSymbolArr = (Symbol.OperatorSymbol[]) this.operatorSuppliers.stream().map(new Function() {
                @Override
                public final Object apply(Object obj) {
                    return (Symbol.OperatorSymbol) ((Supplier) obj).get();
                }
            }).toArray(new IntFunction() {
                @Override
                public final Object apply(int i10) {
                    Symbol.OperatorSymbol[] lambda$initOperators$0;
                    lambda$initOperators$0 = Operators.OperatorHelper.lambda$initOperators$0(i10);
                    return lambda$initOperators$0;
                }
            });
            this.alternatives = Optional.of(operatorSymbolArr);
            this.operatorSuppliers = null;
            return operatorSymbolArr;
        }

        public static Symbol.OperatorSymbol[] lambda$initOperators$0(int i10) {
            return new Symbol.OperatorSymbol[i10];
        }

        public final Symbol.OperatorSymbol doLookup(Predicate<Symbol.OperatorSymbol> predicate) {
            return (Symbol.OperatorSymbol) Stream.of((Object[]) this.alternatives.orElseGet(new Supplier() {
                @Override
                public final Object get() {
                    Symbol.OperatorSymbol[] initOperators;
                    initOperators = Operators.OperatorHelper.this.initOperators();
                    return initOperators;
                }
            })).filter(predicate).findFirst().orElse(Operators.this.noOpSymbol);
        }
    }

    public enum OperatorType {
        BYTE(new Function() {
            @Override
            public final Object apply(Object obj) {
                Type type;
                type = ((Symtab) obj).byteType;
                return type;
            }
        }),
        SHORT(new Function() {
            @Override
            public final Object apply(Object obj) {
                Type type;
                type = ((Symtab) obj).shortType;
                return type;
            }
        }),
        INT(new Function() {
            @Override
            public final Object apply(Object obj) {
                Type type;
                type = ((Symtab) obj).intType;
                return type;
            }
        }),
        LONG(new Function() {
            @Override
            public final Object apply(Object obj) {
                Type type;
                type = ((Symtab) obj).longType;
                return type;
            }
        }),
        FLOAT(new Function() {
            @Override
            public final Object apply(Object obj) {
                Type type;
                type = ((Symtab) obj).floatType;
                return type;
            }
        }),
        DOUBLE(new Function() {
            @Override
            public final Object apply(Object obj) {
                Type type;
                type = ((Symtab) obj).doubleType;
                return type;
            }
        }),
        CHAR(new Function() {
            @Override
            public final Object apply(Object obj) {
                Type type;
                type = ((Symtab) obj).charType;
                return type;
            }
        }),
        BOOLEAN(new Function() {
            @Override
            public final Object apply(Object obj) {
                Type type;
                type = ((Symtab) obj).booleanType;
                return type;
            }
        }),
        OBJECT(new Function() {
            @Override
            public final Object apply(Object obj) {
                Type type;
                type = ((Symtab) obj).objectType;
                return type;
            }
        }),
        STRING(new Function() {
            @Override
            public final Object apply(Object obj) {
                Type type;
                type = ((Symtab) obj).stringType;
                return type;
            }
        }),
        BOT(new Function() {
            @Override
            public final Object apply(Object obj) {
                Type type;
                type = ((Symtab) obj).botType;
                return type;
            }
        });

        final Function<Symtab, Type> asTypeFunc;

        OperatorType(Function function) {
            this.asTypeFunc = function;
        }

        public Type asType(Symtab symtab) {
            return this.asTypeFunc.apply(symtab);
        }
    }

    public class UnaryBooleanOperator extends UnaryOperatorHelper {
        public UnaryBooleanOperator(JCTree.Tag tag) {
            super(tag);
        }

        @Override
        public Symbol.OperatorSymbol resolve(Type type) {
            return doLookup(Operators.this.syms.booleanType);
        }

        @Override
        public boolean test(Type type) {
            return Operators.this.types.unboxedTypeOrType(type).hasTag(TypeTag.BOOLEAN);
        }
    }

    public class UnaryNumericOperator extends UnaryOperatorHelper {
        Predicate<Type> numericTest;

        public UnaryNumericOperator(Operators operators, JCTree.Tag tag) {
            this(tag, new D1());
        }

        @Override
        public Symbol.OperatorSymbol resolve(Type type) {
            return doLookup(Operators.this.unaryPromotion(type));
        }

        public UnaryNumericOperator(JCTree.Tag tag, Predicate<Type> predicate) {
            super(tag);
            this.numericTest = predicate;
        }

        @Override
        public boolean test(Type type) {
            return this.numericTest.test(Operators.this.unaryPromotion(type));
        }
    }

    public abstract class UnaryOperatorHelper extends OperatorHelper implements Predicate<Type> {
        public UnaryOperatorHelper(JCTree.Tag tag) {
            super(tag);
        }

        public Symbol.OperatorSymbol lambda$addUnaryOperator$1(OperatorType operatorType, OperatorType operatorType2, int[] iArr) {
            return Operators.this.makeOperator(this.name, List.of(operatorType), operatorType2, iArr);
        }

        public final UnaryOperatorHelper addUnaryOperator(final OperatorType operatorType, final OperatorType operatorType2, final int... iArr) {
            this.operatorSuppliers = this.operatorSuppliers.prepend(new Supplier() {
                @Override
                public final Object get() {
                    Symbol.OperatorSymbol lambda$addUnaryOperator$1;
                    lambda$addUnaryOperator$1 = Operators.UnaryOperatorHelper.this.lambda$addUnaryOperator$1(operatorType, operatorType2, iArr);
                    return lambda$addUnaryOperator$1;
                }
            });
            return this;
        }

        public final Symbol.OperatorSymbol doLookup(final Type type) {
            return doLookup(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    boolean lambda$doLookup$0;
                    lambda$doLookup$0 = Operators.UnaryOperatorHelper.this.lambda$doLookup$0(type, (Symbol.OperatorSymbol) obj);
                    return lambda$doLookup$0;
                }
            });
        }

        public boolean lambda$doLookup$0(Symbol.OperatorSymbol operatorSymbol, Type type) {
            return Operators.this.types.isSameType(operatorSymbol.type.getParameterTypes().head, type);
        }

        public abstract Symbol.OperatorSymbol resolve(Type type);
    }

    public class UnaryPrefixPostfixOperator extends UnaryNumericOperator {
        public UnaryPrefixPostfixOperator(JCTree.Tag tag) {
            super(Operators.this, tag);
        }

        @Override
        public Symbol.OperatorSymbol resolve(Type type) {
            return doLookup(Operators.this.types.unboxedTypeOrType(type));
        }
    }

    public class UnaryReferenceOperator extends UnaryOperatorHelper {
        public UnaryReferenceOperator(JCTree.Tag tag) {
            super(tag);
        }

        @Override
        public Symbol.OperatorSymbol resolve(Type type) {
            return doLookup(Operators.this.syms.objectType);
        }

        @Override
        public boolean test(Type type) {
            return type.isNullOrReference();
        }
    }

    public Operators(Context context) {
        context.put((Context.Key<Context.Key<Operators>>) operatorsKey, (Context.Key<Operators>) this);
        Symtab instance = Symtab.instance(context);
        this.syms = instance;
        Names instance2 = Names.instance(context);
        this.names = instance2;
        this.log = Log.instance(context);
        this.types = Types.instance(context);
        this.noOpSymbol = new Symbol.OperatorSymbol(instance2.empty, Type.noType, -1, instance.noSymbol);
        initOperatorNames();
        initUnaryOperators();
        initBinaryOperators();
    }

    private void initBinaryOperators() {
        Map<Name, List<BinaryOperatorHelper>> map = this.binaryOperators;
        JCTree.Tag tag = JCTree.Tag.PLUS;
        BinaryStringOperator binaryStringOperator = new BinaryStringOperator(tag);
        OperatorType operatorType = OperatorType.STRING;
        OperatorType operatorType2 = OperatorType.OBJECT;
        BinaryOperatorHelper addBinaryOperator = binaryStringOperator.addBinaryOperator(operatorType, operatorType2, operatorType, 256).addBinaryOperator(operatorType2, operatorType, operatorType, 256).addBinaryOperator(operatorType, operatorType, operatorType, 256);
        OperatorType operatorType3 = OperatorType.INT;
        BinaryOperatorHelper addBinaryOperator2 = addBinaryOperator.addBinaryOperator(operatorType, operatorType3, operatorType, 256);
        OperatorType operatorType4 = OperatorType.LONG;
        BinaryOperatorHelper addBinaryOperator3 = addBinaryOperator2.addBinaryOperator(operatorType, operatorType4, operatorType, 256);
        OperatorType operatorType5 = OperatorType.FLOAT;
        BinaryOperatorHelper addBinaryOperator4 = addBinaryOperator3.addBinaryOperator(operatorType, operatorType5, operatorType, 256);
        OperatorType operatorType6 = OperatorType.DOUBLE;
        BinaryOperatorHelper addBinaryOperator5 = addBinaryOperator4.addBinaryOperator(operatorType, operatorType6, operatorType, 256);
        OperatorType operatorType7 = OperatorType.BOOLEAN;
        BinaryOperatorHelper addBinaryOperator6 = addBinaryOperator5.addBinaryOperator(operatorType, operatorType7, operatorType, 256);
        OperatorType operatorType8 = OperatorType.BOT;
        BinaryOperatorHelper addBinaryOperator7 = addBinaryOperator6.addBinaryOperator(operatorType, operatorType8, operatorType, 256).addBinaryOperator(operatorType3, operatorType, operatorType, 256).addBinaryOperator(operatorType4, operatorType, operatorType, 256).addBinaryOperator(operatorType5, operatorType, operatorType, 256).addBinaryOperator(operatorType6, operatorType, operatorType, 256).addBinaryOperator(operatorType7, operatorType, operatorType, 256).addBinaryOperator(operatorType8, operatorType, operatorType, 256);
        BinaryOperatorHelper addBinaryOperator8 = new BinaryNumericOperator(this, tag).addBinaryOperator(operatorType6, operatorType6, operatorType6, 99).addBinaryOperator(operatorType5, operatorType5, operatorType5, 98).addBinaryOperator(operatorType4, operatorType4, operatorType4, 97).addBinaryOperator(operatorType3, operatorType3, operatorType3, 96);
        BinaryOperatorHelper addBinaryOperator9 = new BinaryNumericOperator(this, JCTree.Tag.MINUS).addBinaryOperator(operatorType6, operatorType6, operatorType6, 103).addBinaryOperator(operatorType5, operatorType5, operatorType5, 102).addBinaryOperator(operatorType4, operatorType4, operatorType4, 101).addBinaryOperator(operatorType3, operatorType3, operatorType3, 100);
        BinaryOperatorHelper addBinaryOperator10 = new BinaryNumericOperator(this, JCTree.Tag.MUL).addBinaryOperator(operatorType6, operatorType6, operatorType6, 107).addBinaryOperator(operatorType5, operatorType5, operatorType5, 106).addBinaryOperator(operatorType4, operatorType4, operatorType4, 105).addBinaryOperator(operatorType3, operatorType3, operatorType3, 104);
        BinaryOperatorHelper addBinaryOperator11 = new BinaryNumericOperator(this, JCTree.Tag.DIV).addBinaryOperator(operatorType6, operatorType6, operatorType6, 111).addBinaryOperator(operatorType5, operatorType5, operatorType5, 110).addBinaryOperator(operatorType4, operatorType4, operatorType4, 109).addBinaryOperator(operatorType3, operatorType3, operatorType3, 108);
        BinaryOperatorHelper addBinaryOperator12 = new BinaryNumericOperator(this, JCTree.Tag.MOD).addBinaryOperator(operatorType6, operatorType6, operatorType6, 115).addBinaryOperator(operatorType5, operatorType5, operatorType5, 114).addBinaryOperator(operatorType4, operatorType4, operatorType4, 113).addBinaryOperator(operatorType3, operatorType3, operatorType3, 112);
        JCTree.Tag tag2 = JCTree.Tag.BITAND;
        BinaryOperatorHelper addBinaryOperator13 = new BinaryBooleanOperator(tag2).addBinaryOperator(operatorType7, operatorType7, operatorType7, 126);
        BinaryOperatorHelper addBinaryOperator14 = new BinaryNumericOperator(tag2, new C14901u1()).addBinaryOperator(operatorType4, operatorType4, operatorType4, 127).addBinaryOperator(operatorType3, operatorType3, operatorType3, 126);
        JCTree.Tag tag3 = JCTree.Tag.BITOR;
        BinaryOperatorHelper addBinaryOperator15 = new BinaryBooleanOperator(tag3).addBinaryOperator(operatorType7, operatorType7, operatorType7, 128);
        BinaryOperatorHelper addBinaryOperator16 = new BinaryNumericOperator(tag3, new C14901u1()).addBinaryOperator(operatorType4, operatorType4, operatorType4, 129).addBinaryOperator(operatorType3, operatorType3, operatorType3, 128);
        JCTree.Tag tag4 = JCTree.Tag.BITXOR;
        initOperators(map, addBinaryOperator7, addBinaryOperator8, addBinaryOperator9, addBinaryOperator10, addBinaryOperator11, addBinaryOperator12, addBinaryOperator13, addBinaryOperator14, addBinaryOperator15, addBinaryOperator16, new BinaryBooleanOperator(tag4).addBinaryOperator(operatorType7, operatorType7, operatorType7, 130), new BinaryNumericOperator(tag4, new C14901u1()).addBinaryOperator(operatorType4, operatorType4, operatorType4, 131).addBinaryOperator(operatorType3, operatorType3, operatorType3, 130), new BinaryShiftOperator(JCTree.Tag.SL).addBinaryOperator(operatorType3, operatorType3, operatorType3, 120).addBinaryOperator(operatorType3, operatorType4, operatorType3, 270).addBinaryOperator(operatorType4, operatorType3, operatorType4, 121).addBinaryOperator(operatorType4, operatorType4, operatorType4, 271), new BinaryShiftOperator(JCTree.Tag.SR).addBinaryOperator(operatorType3, operatorType3, operatorType3, 122).addBinaryOperator(operatorType3, operatorType4, operatorType3, 272).addBinaryOperator(operatorType4, operatorType3, operatorType4, 123).addBinaryOperator(operatorType4, operatorType4, operatorType4, 273), new BinaryShiftOperator(JCTree.Tag.USR).addBinaryOperator(operatorType3, operatorType3, operatorType3, 124).addBinaryOperator(operatorType3, operatorType4, operatorType3, 274).addBinaryOperator(operatorType4, operatorType3, operatorType4, 125).addBinaryOperator(operatorType4, operatorType4, operatorType4, 275), new BinaryNumericOperator(this, JCTree.Tag.LT).addBinaryOperator(operatorType6, operatorType6, operatorType7, 152, 155).addBinaryOperator(operatorType5, operatorType5, operatorType7, 150, 155).addBinaryOperator(operatorType4, operatorType4, operatorType7, 148, 155).addBinaryOperator(operatorType3, operatorType3, operatorType7, 161), new BinaryNumericOperator(this, JCTree.Tag.GT).addBinaryOperator(operatorType6, operatorType6, operatorType7, 151, 157).addBinaryOperator(operatorType5, operatorType5, operatorType7, 149, 157).addBinaryOperator(operatorType4, operatorType4, operatorType7, 148, 157).addBinaryOperator(operatorType3, operatorType3, operatorType7, 163), new BinaryNumericOperator(this, JCTree.Tag.LE).addBinaryOperator(operatorType6, operatorType6, operatorType7, 152, 158).addBinaryOperator(operatorType5, operatorType5, operatorType7, 150, 158).addBinaryOperator(operatorType4, operatorType4, operatorType7, 148, 158).addBinaryOperator(operatorType3, operatorType3, operatorType7, 164), new BinaryNumericOperator(this, JCTree.Tag.GE).addBinaryOperator(operatorType6, operatorType6, operatorType7, 151, 156).addBinaryOperator(operatorType5, operatorType5, operatorType7, 149, 156).addBinaryOperator(operatorType4, operatorType4, operatorType7, 148, 156).addBinaryOperator(operatorType3, operatorType3, operatorType7, 162), new BinaryEqualityOperator(JCTree.Tag.EQ).addBinaryOperator(operatorType2, operatorType2, operatorType7, 165).addBinaryOperator(operatorType7, operatorType7, operatorType7, 159).addBinaryOperator(operatorType6, operatorType6, operatorType7, 151, 153).addBinaryOperator(operatorType5, operatorType5, operatorType7, 149, 153).addBinaryOperator(operatorType4, operatorType4, operatorType7, 148, 153).addBinaryOperator(operatorType3, operatorType3, operatorType7, 159), new BinaryEqualityOperator(JCTree.Tag.NE).addBinaryOperator(operatorType2, operatorType2, operatorType7, 166).addBinaryOperator(operatorType7, operatorType7, operatorType7, 160).addBinaryOperator(operatorType6, operatorType6, operatorType7, 151, 154).addBinaryOperator(operatorType5, operatorType5, operatorType7, 149, 154).addBinaryOperator(operatorType4, operatorType4, operatorType7, 148, 154).addBinaryOperator(operatorType3, operatorType3, operatorType7, 160), new BinaryBooleanOperator(JCTree.Tag.AND).addBinaryOperator(operatorType7, operatorType7, operatorType7, 258), new BinaryBooleanOperator(JCTree.Tag.OR).addBinaryOperator(operatorType7, operatorType7, operatorType7, 259));
    }

    private void initOperatorNames() {
        setOperatorName(JCTree.Tag.POS, "+");
        setOperatorName(JCTree.Tag.NEG, "-");
        setOperatorName(JCTree.Tag.NOT, "!");
        setOperatorName(JCTree.Tag.COMPL, "~");
        setOperatorName(JCTree.Tag.PREINC, "++");
        setOperatorName(JCTree.Tag.PREDEC, "--");
        setOperatorName(JCTree.Tag.POSTINC, "++");
        setOperatorName(JCTree.Tag.POSTDEC, "--");
        setOperatorName(JCTree.Tag.NULLCHK, "<*nullchk*>");
        setOperatorName(JCTree.Tag.OR, "||");
        setOperatorName(JCTree.Tag.AND, "&&");
        setOperatorName(JCTree.Tag.EQ, "==");
        setOperatorName(JCTree.Tag.NE, "!=");
        setOperatorName(JCTree.Tag.LT, "<");
        setOperatorName(JCTree.Tag.GT, ">");
        setOperatorName(JCTree.Tag.LE, "<=");
        setOperatorName(JCTree.Tag.GE, ">=");
        setOperatorName(JCTree.Tag.BITOR, "|");
        setOperatorName(JCTree.Tag.BITXOR, "^");
        setOperatorName(JCTree.Tag.BITAND, "&");
        setOperatorName(JCTree.Tag.SL, "<<");
        setOperatorName(JCTree.Tag.SR, ">>");
        setOperatorName(JCTree.Tag.USR, ">>>");
        setOperatorName(JCTree.Tag.PLUS, "+");
        setOperatorName(JCTree.Tag.MINUS, this.names.hyphen);
        setOperatorName(JCTree.Tag.MUL, this.names.asterisk);
        setOperatorName(JCTree.Tag.DIV, this.names.slash);
        setOperatorName(JCTree.Tag.MOD, ve.j.f121589a);
    }

    @SafeVarargs
    private final <O extends OperatorHelper> void initOperators(Map<Name, List<O>> map, O... oArr) {
        for (O o10 : oArr) {
            Name name = o10.name;
            map.put(name, map.getOrDefault(name, List.nil()).prepend(o10));
        }
    }

    private void initUnaryOperators() {
        Map<Name, List<UnaryOperatorHelper>> map = this.unaryOperators;
        UnaryNumericOperator unaryNumericOperator = new UnaryNumericOperator(this, JCTree.Tag.POS);
        OperatorType operatorType = OperatorType.DOUBLE;
        UnaryOperatorHelper addUnaryOperator = unaryNumericOperator.addUnaryOperator(operatorType, operatorType, 0);
        OperatorType operatorType2 = OperatorType.FLOAT;
        UnaryOperatorHelper addUnaryOperator2 = addUnaryOperator.addUnaryOperator(operatorType2, operatorType2, 0);
        OperatorType operatorType3 = OperatorType.LONG;
        UnaryOperatorHelper addUnaryOperator3 = addUnaryOperator2.addUnaryOperator(operatorType3, operatorType3, 0);
        OperatorType operatorType4 = OperatorType.INT;
        UnaryOperatorHelper addUnaryOperator4 = addUnaryOperator3.addUnaryOperator(operatorType4, operatorType4, 0);
        UnaryOperatorHelper addUnaryOperator5 = new UnaryNumericOperator(this, JCTree.Tag.NEG).addUnaryOperator(operatorType, operatorType, 119).addUnaryOperator(operatorType2, operatorType2, 118).addUnaryOperator(operatorType3, operatorType3, 117).addUnaryOperator(operatorType4, operatorType4, 116);
        UnaryOperatorHelper addUnaryOperator6 = new UnaryNumericOperator(JCTree.Tag.COMPL, new C14901u1()).addUnaryOperator(operatorType3, operatorType3, 131).addUnaryOperator(operatorType4, operatorType4, 130);
        UnaryOperatorHelper addUnaryOperator7 = new UnaryPrefixPostfixOperator(JCTree.Tag.POSTINC).addUnaryOperator(operatorType, operatorType, 99).addUnaryOperator(operatorType2, operatorType2, 98).addUnaryOperator(operatorType3, operatorType3, 97).addUnaryOperator(operatorType4, operatorType4, 96);
        OperatorType operatorType5 = OperatorType.CHAR;
        UnaryOperatorHelper addUnaryOperator8 = addUnaryOperator7.addUnaryOperator(operatorType5, operatorType5, 96);
        OperatorType operatorType6 = OperatorType.SHORT;
        UnaryOperatorHelper addUnaryOperator9 = addUnaryOperator8.addUnaryOperator(operatorType6, operatorType6, 96);
        OperatorType operatorType7 = OperatorType.BYTE;
        UnaryOperatorHelper addUnaryOperator10 = addUnaryOperator9.addUnaryOperator(operatorType7, operatorType7, 96);
        UnaryOperatorHelper addUnaryOperator11 = new UnaryPrefixPostfixOperator(JCTree.Tag.POSTDEC).addUnaryOperator(operatorType, operatorType, 103).addUnaryOperator(operatorType2, operatorType2, 102).addUnaryOperator(operatorType3, operatorType3, 101).addUnaryOperator(operatorType4, operatorType4, 100).addUnaryOperator(operatorType5, operatorType5, 100).addUnaryOperator(operatorType6, operatorType6, 100).addUnaryOperator(operatorType7, operatorType7, 100);
        UnaryBooleanOperator unaryBooleanOperator = new UnaryBooleanOperator(JCTree.Tag.NOT);
        OperatorType operatorType8 = OperatorType.BOOLEAN;
        UnaryOperatorHelper addUnaryOperator12 = unaryBooleanOperator.addUnaryOperator(operatorType8, operatorType8, 257);
        UnaryReferenceOperator unaryReferenceOperator = new UnaryReferenceOperator(JCTree.Tag.NULLCHK);
        OperatorType operatorType9 = OperatorType.OBJECT;
        initOperators(map, addUnaryOperator4, addUnaryOperator5, addUnaryOperator6, addUnaryOperator10, addUnaryOperator11, addUnaryOperator12, unaryReferenceOperator.addUnaryOperator(operatorType9, operatorType9, 276));
    }

    public static Operators instance(Context context) {
        Operators operators = (Operators) context.get(operatorsKey);
        return operators == null ? new Operators(context) : operators;
    }

    public static Symbol.OperatorSymbol lambda$lookupBinaryOp$7(Predicate predicate, BinaryOperatorHelper binaryOperatorHelper) {
        return binaryOperatorHelper.doLookup(predicate);
    }

    public boolean lambda$lookupBinaryOp$8(Symbol.OperatorSymbol operatorSymbol) {
        return operatorSymbol != this.noOpSymbol;
    }

    public Type lambda$makeOperator$6(OperatorType operatorType) {
        return operatorType.asType(this.syms);
    }

    public static boolean lambda$resolveBinary$3(Type type, Type type2, BinaryOperatorHelper binaryOperatorHelper) {
        return binaryOperatorHelper.test(type, type2);
    }

    public static Symbol.OperatorSymbol lambda$resolveBinary$4(Type type, Type type2, BinaryOperatorHelper binaryOperatorHelper) {
        return binaryOperatorHelper.resolve(type, type2);
    }

    public Symbol.OperatorSymbol lambda$resolveBinary$5(JCDiagnostic.DiagnosticPosition diagnosticPosition, JCTree.Tag tag, Type type, Type type2) {
        return reportErrorIfNeeded(diagnosticPosition, tag, type, type2);
    }

    public static boolean lambda$resolveUnary$0(Type type, UnaryOperatorHelper unaryOperatorHelper) {
        return unaryOperatorHelper.test(type);
    }

    public static Symbol.OperatorSymbol lambda$resolveUnary$1(Type type, UnaryOperatorHelper unaryOperatorHelper) {
        return unaryOperatorHelper.resolve(type);
    }

    public Symbol.OperatorSymbol lambda$resolveUnary$2(JCDiagnostic.DiagnosticPosition diagnosticPosition, JCTree.Tag tag, Type type) {
        return reportErrorIfNeeded(diagnosticPosition, tag, type);
    }

    public Symbol.OperatorSymbol makeOperator(Name name, List<OperatorType> list, OperatorType operatorType, int... iArr) {
        return new Symbol.OperatorSymbol(name, new Type.MethodType((List) list.stream().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Type lambda$makeOperator$6;
                lambda$makeOperator$6 = Operators.this.lambda$makeOperator$6((Operators.OperatorType) obj);
                return lambda$makeOperator$6;
            }
        }).collect(List.collector()), operatorType.asType(this.syms), List.nil(), this.syms.methodClass), mergeOpcodes(iArr), this.syms.noSymbol);
    }

    private int mergeOpcodes(int... iArr) {
        int length = iArr.length;
        Assert.check(length == 1 || length == 2);
        if (length == 1) {
            return iArr[0];
        }
        return iArr[1] | (iArr[0] << 9);
    }

    private Symbol.OperatorSymbol reportErrorIfNeeded(JCDiagnostic.DiagnosticPosition diagnosticPosition, JCTree.Tag tag, Type... typeArr) {
        if (Stream.of((Object[]) typeArr).noneMatch(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return ((Type) obj).isErroneous();
            }
        })) {
            Name operatorName = operatorName(tag);
            this.log.error(diagnosticPosition, typeArr.length == 1 ? CompilerProperties.Errors.OperatorCantBeApplied(operatorName, typeArr[0]) : CompilerProperties.Errors.OperatorCantBeApplied1(operatorName, typeArr[0], typeArr[1]));
        }
        return this.noOpSymbol;
    }

    private <O> Symbol.OperatorSymbol resolve(JCTree.Tag tag, Map<Name, List<O>> map, Predicate<O> predicate, Function<O, Symbol.OperatorSymbol> function, Supplier<Symbol.OperatorSymbol> supplier) {
        return (Symbol.OperatorSymbol) map.get(operatorName(tag)).stream().filter(predicate).map(function).findFirst().orElseGet(supplier);
    }

    private void setOperatorName(JCTree.Tag tag, String str) {
        setOperatorName(tag, this.names.fromString(str));
    }

    public Type binaryPromotion(Type type, Type type2) {
        Type unboxedTypeOrType = this.types.unboxedTypeOrType(type);
        Type unboxedTypeOrType2 = this.types.unboxedTypeOrType(type2);
        if (!unboxedTypeOrType.isNumeric() || !unboxedTypeOrType2.isNumeric()) {
            return this.types.isSameType(unboxedTypeOrType, unboxedTypeOrType2) ? unboxedTypeOrType : this.syms.objectType;
        }
        TypeTag typeTag = TypeTag.DOUBLE;
        if (unboxedTypeOrType.hasTag(typeTag) || unboxedTypeOrType2.hasTag(typeTag)) {
            return this.syms.doubleType;
        }
        TypeTag typeTag2 = TypeTag.FLOAT;
        if (unboxedTypeOrType.hasTag(typeTag2) || unboxedTypeOrType2.hasTag(typeTag2)) {
            return this.syms.floatType;
        }
        TypeTag typeTag3 = TypeTag.LONG;
        return (unboxedTypeOrType.hasTag(typeTag3) || unboxedTypeOrType2.hasTag(typeTag3)) ? this.syms.longType : this.syms.intType;
    }

    public Symbol.OperatorSymbol lookupBinaryOp(final Predicate<Symbol.OperatorSymbol> predicate) {
        return (Symbol.OperatorSymbol) this.binaryOperators.values().stream().flatMap(new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((List) obj).stream();
            }
        }).map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Symbol.OperatorSymbol lambda$lookupBinaryOp$7;
                lambda$lookupBinaryOp$7 = Operators.lambda$lookupBinaryOp$7(Predicate.this, (Operators.BinaryOperatorHelper) obj);
                return lambda$lookupBinaryOp$7;
            }
        }).distinct().filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$lookupBinaryOp$8;
                lambda$lookupBinaryOp$8 = Operators.this.lambda$lookupBinaryOp$8((Symbol.OperatorSymbol) obj);
                return lambda$lookupBinaryOp$8;
            }
        }).findFirst().get();
    }

    public Name operatorName(JCTree.Tag tag) {
        return this.opname[tag.operatorIndex()];
    }

    public Symbol.OperatorSymbol resolveBinary(final JCDiagnostic.DiagnosticPosition diagnosticPosition, final JCTree.Tag tag, final Type type, final Type type2) {
        return resolve(tag, this.binaryOperators, new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$resolveBinary$3;
                lambda$resolveBinary$3 = Operators.lambda$resolveBinary$3(Type.this, type2, (Operators.BinaryOperatorHelper) obj);
                return lambda$resolveBinary$3;
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                Symbol.OperatorSymbol lambda$resolveBinary$4;
                lambda$resolveBinary$4 = Operators.lambda$resolveBinary$4(Type.this, type2, (Operators.BinaryOperatorHelper) obj);
                return lambda$resolveBinary$4;
            }
        }, new Supplier() {
            @Override
            public final Object get() {
                Symbol.OperatorSymbol lambda$resolveBinary$5;
                lambda$resolveBinary$5 = Operators.this.lambda$resolveBinary$5(diagnosticPosition, tag, type, type2);
                return lambda$resolveBinary$5;
            }
        });
    }

    public Symbol.OperatorSymbol resolveUnary(final JCDiagnostic.DiagnosticPosition diagnosticPosition, final JCTree.Tag tag, final Type type) {
        return resolve(tag, this.unaryOperators, new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$resolveUnary$0;
                lambda$resolveUnary$0 = Operators.lambda$resolveUnary$0(Type.this, (Operators.UnaryOperatorHelper) obj);
                return lambda$resolveUnary$0;
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                Symbol.OperatorSymbol lambda$resolveUnary$1;
                lambda$resolveUnary$1 = Operators.lambda$resolveUnary$1(Type.this, (Operators.UnaryOperatorHelper) obj);
                return lambda$resolveUnary$1;
            }
        }, new Supplier() {
            @Override
            public final Object get() {
                Symbol.OperatorSymbol lambda$resolveUnary$2;
                lambda$resolveUnary$2 = Operators.this.lambda$resolveUnary$2(diagnosticPosition, tag, type);
                return lambda$resolveUnary$2;
            }
        });
    }

    public Type unaryPromotion(Type type) {
        Type unboxedTypeOrType = this.types.unboxedTypeOrType(type);
        int i10 = AnonymousClass1.$SwitchMap$com$sun$tools$javac$code$TypeTag[unboxedTypeOrType.getTag().ordinal()];
        return (i10 == 1 || i10 == 2 || i10 == 3) ? this.syms.intType : unboxedTypeOrType;
    }

    private void setOperatorName(JCTree.Tag tag, Name name) {
        this.opname[tag.operatorIndex()] = name;
    }
}

package org.eclipse.jdt.internal.compiler.impl;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.SerializableShaderEntry;
import org.eclipse.jdt.internal.compiler.ast.OperatorIds;
import org.eclipse.jdt.internal.compiler.lookup.TypeIds;
import org.eclipse.jdt.internal.compiler.problem.ShouldNotImplement;
import org.eclipse.jdt.internal.compiler.util.Messages;

public abstract class Constant implements TypeIds, OperatorIds {
    public static final Constant NotAConstant = DoubleConstant.fromValue(Double.NaN);
    public static final Constant[] NotAConstantList = {DoubleConstant.fromValue(Double.NaN)};

    public static final Constant computeConstantOperation(Constant constant, int i10, int i11) {
        switch (i11) {
            case 11:
                return BooleanConstant.fromValue(!constant.booleanValue());
            case 12:
                if (i10 == 2) {
                    return IntConstant.fromValue(~constant.charValue());
                }
                if (i10 == 3) {
                    return IntConstant.fromValue(~constant.byteValue());
                }
                if (i10 == 4) {
                    return IntConstant.fromValue(~constant.shortValue());
                }
                if (i10 == 7) {
                    return LongConstant.fromValue(~constant.longValue());
                }
                if (i10 != 10) {
                    return NotAConstant;
                }
                return IntConstant.fromValue(~constant.intValue());
            case 13:
                if (i10 == 8) {
                    double doubleValue = constant.doubleValue();
                    if (doubleValue == 0.0d) {
                        if (Double.doubleToLongBits(doubleValue) == 0) {
                            return DoubleConstant.fromValue(-0.0d);
                        }
                        return DoubleConstant.fromValue(0.0d);
                    }
                } else if (i10 == 9) {
                    float floatValue = constant.floatValue();
                    if (floatValue == 0.0f) {
                        if (Float.floatToIntBits(floatValue) == 0) {
                            return FloatConstant.fromValue(-0.0f);
                        }
                        return FloatConstant.fromValue(0.0f);
                    }
                }
                return computeConstantOperationMINUS(IntConstant.fromValue(0), 10, constant, i10);
            case 14:
                return computeConstantOperationPLUS(IntConstant.fromValue(0), 10, constant, i10);
            default:
                return NotAConstant;
        }
    }

    public static final Constant computeConstantOperationAND(Constant constant, int i10, Constant constant2, int i11) {
        if (i10 != 2) {
            if (i10 != 3) {
                if (i10 != 4) {
                    if (i10 == 5) {
                        return BooleanConstant.fromValue(constant.booleanValue() & constant2.booleanValue());
                    }
                    if (i10 != 7) {
                        if (i10 == 10) {
                            if (i11 == 2) {
                                return IntConstant.fromValue(constant.intValue() & constant2.charValue());
                            }
                            if (i11 == 3) {
                                return IntConstant.fromValue(constant.intValue() & constant2.byteValue());
                            }
                            if (i11 == 4) {
                                return IntConstant.fromValue(constant.intValue() & constant2.shortValue());
                            }
                            if (i11 == 7) {
                                return LongConstant.fromValue(constant.intValue() & constant2.longValue());
                            }
                            if (i11 == 10) {
                                return IntConstant.fromValue(constant.intValue() & constant2.intValue());
                            }
                        }
                    } else {
                        if (i11 == 2) {
                            return LongConstant.fromValue(constant.longValue() & constant2.charValue());
                        }
                        if (i11 == 3) {
                            return LongConstant.fromValue(constant.longValue() & constant2.byteValue());
                        }
                        if (i11 == 4) {
                            return LongConstant.fromValue(constant.longValue() & constant2.shortValue());
                        }
                        if (i11 == 7) {
                            return LongConstant.fromValue(constant.longValue() & constant2.longValue());
                        }
                        if (i11 == 10) {
                            return LongConstant.fromValue(constant.longValue() & constant2.intValue());
                        }
                    }
                } else {
                    if (i11 == 2) {
                        return IntConstant.fromValue(constant.shortValue() & constant2.charValue());
                    }
                    if (i11 == 3) {
                        return IntConstant.fromValue(constant.shortValue() & constant2.byteValue());
                    }
                    if (i11 == 4) {
                        return IntConstant.fromValue(constant.shortValue() & constant2.shortValue());
                    }
                    if (i11 == 7) {
                        return LongConstant.fromValue(constant.shortValue() & constant2.longValue());
                    }
                    if (i11 == 10) {
                        return IntConstant.fromValue(constant.shortValue() & constant2.intValue());
                    }
                }
            } else {
                if (i11 == 2) {
                    return IntConstant.fromValue(constant.byteValue() & constant2.charValue());
                }
                if (i11 == 3) {
                    return IntConstant.fromValue(constant.byteValue() & constant2.byteValue());
                }
                if (i11 == 4) {
                    return IntConstant.fromValue(constant.byteValue() & constant2.shortValue());
                }
                if (i11 == 7) {
                    return LongConstant.fromValue(constant.byteValue() & constant2.longValue());
                }
                if (i11 == 10) {
                    return IntConstant.fromValue(constant.byteValue() & constant2.intValue());
                }
            }
        } else {
            if (i11 == 2) {
                return IntConstant.fromValue(constant.charValue() & constant2.charValue());
            }
            if (i11 == 3) {
                return IntConstant.fromValue(constant.charValue() & constant2.byteValue());
            }
            if (i11 == 4) {
                return IntConstant.fromValue(constant.charValue() & constant2.shortValue());
            }
            if (i11 == 7) {
                return LongConstant.fromValue(constant.charValue() & constant2.longValue());
            }
            if (i11 == 10) {
                return IntConstant.fromValue(constant.charValue() & constant2.intValue());
            }
        }
        return NotAConstant;
    }

    public static final Constant computeConstantOperationAND_AND(Constant constant, int i10, Constant constant2, int i11) {
        return BooleanConstant.fromValue(constant.booleanValue() && constant2.booleanValue());
    }

    public static final Constant computeConstantOperationDIVIDE(Constant constant, int i10, Constant constant2, int i11) {
        switch (i10) {
            case 2:
                switch (i11) {
                    case 2:
                        return IntConstant.fromValue(constant.charValue() / constant2.charValue());
                    case 3:
                        return IntConstant.fromValue(constant.charValue() / constant2.byteValue());
                    case 4:
                        return IntConstant.fromValue(constant.charValue() / constant2.shortValue());
                    case 7:
                        return LongConstant.fromValue(constant.charValue() / constant2.longValue());
                    case 8:
                        return DoubleConstant.fromValue(constant.charValue() / constant2.doubleValue());
                    case 9:
                        return FloatConstant.fromValue(constant.charValue() / constant2.floatValue());
                    case 10:
                        return IntConstant.fromValue(constant.charValue() / constant2.intValue());
                }
            case 3:
                switch (i11) {
                    case 2:
                        return IntConstant.fromValue(constant.byteValue() / constant2.charValue());
                    case 3:
                        return IntConstant.fromValue(constant.byteValue() / constant2.byteValue());
                    case 4:
                        return IntConstant.fromValue(constant.byteValue() / constant2.shortValue());
                    case 7:
                        return LongConstant.fromValue(constant.byteValue() / constant2.longValue());
                    case 8:
                        return DoubleConstant.fromValue(constant.byteValue() / constant2.doubleValue());
                    case 9:
                        return FloatConstant.fromValue(constant.byteValue() / constant2.floatValue());
                    case 10:
                        return IntConstant.fromValue(constant.byteValue() / constant2.intValue());
                }
            case 4:
                switch (i11) {
                    case 2:
                        return IntConstant.fromValue(constant.shortValue() / constant2.charValue());
                    case 3:
                        return IntConstant.fromValue(constant.shortValue() / constant2.byteValue());
                    case 4:
                        return IntConstant.fromValue(constant.shortValue() / constant2.shortValue());
                    case 7:
                        return LongConstant.fromValue(constant.shortValue() / constant2.longValue());
                    case 8:
                        return DoubleConstant.fromValue(constant.shortValue() / constant2.doubleValue());
                    case 9:
                        return FloatConstant.fromValue(constant.shortValue() / constant2.floatValue());
                    case 10:
                        return IntConstant.fromValue(constant.shortValue() / constant2.intValue());
                }
            case 7:
                switch (i11) {
                    case 2:
                        return LongConstant.fromValue(constant.longValue() / constant2.charValue());
                    case 3:
                        return LongConstant.fromValue(constant.longValue() / constant2.byteValue());
                    case 4:
                        return LongConstant.fromValue(constant.longValue() / constant2.shortValue());
                    case 7:
                        return LongConstant.fromValue(constant.longValue() / constant2.longValue());
                    case 8:
                        return DoubleConstant.fromValue(constant.longValue() / constant2.doubleValue());
                    case 9:
                        return FloatConstant.fromValue(((float) constant.longValue()) / constant2.floatValue());
                    case 10:
                        return LongConstant.fromValue(constant.longValue() / constant2.intValue());
                }
            case 8:
                switch (i11) {
                    case 2:
                        return DoubleConstant.fromValue(constant.doubleValue() / constant2.charValue());
                    case 3:
                        return DoubleConstant.fromValue(constant.doubleValue() / constant2.byteValue());
                    case 4:
                        return DoubleConstant.fromValue(constant.doubleValue() / constant2.shortValue());
                    case 7:
                        return DoubleConstant.fromValue(constant.doubleValue() / constant2.longValue());
                    case 8:
                        return DoubleConstant.fromValue(constant.doubleValue() / constant2.doubleValue());
                    case 9:
                        return DoubleConstant.fromValue(constant.doubleValue() / constant2.floatValue());
                    case 10:
                        return DoubleConstant.fromValue(constant.doubleValue() / constant2.intValue());
                }
            case 9:
                switch (i11) {
                    case 2:
                        return FloatConstant.fromValue(constant.floatValue() / constant2.charValue());
                    case 3:
                        return FloatConstant.fromValue(constant.floatValue() / constant2.byteValue());
                    case 4:
                        return FloatConstant.fromValue(constant.floatValue() / constant2.shortValue());
                    case 7:
                        return FloatConstant.fromValue(constant.floatValue() / ((float) constant2.longValue()));
                    case 8:
                        return DoubleConstant.fromValue(constant.floatValue() / constant2.doubleValue());
                    case 9:
                        return FloatConstant.fromValue(constant.floatValue() / constant2.floatValue());
                    case 10:
                        return FloatConstant.fromValue(constant.floatValue() / constant2.intValue());
                }
            case 10:
                switch (i11) {
                    case 2:
                        return IntConstant.fromValue(constant.intValue() / constant2.charValue());
                    case 3:
                        return IntConstant.fromValue(constant.intValue() / constant2.byteValue());
                    case 4:
                        return IntConstant.fromValue(constant.intValue() / constant2.shortValue());
                    case 7:
                        return LongConstant.fromValue(constant.intValue() / constant2.longValue());
                    case 8:
                        return DoubleConstant.fromValue(constant.intValue() / constant2.doubleValue());
                    case 9:
                        return FloatConstant.fromValue(constant.intValue() / constant2.floatValue());
                    case 10:
                        return IntConstant.fromValue(constant.intValue() / constant2.intValue());
                }
        }
        return NotAConstant;
    }

    public static final Constant computeConstantOperationEQUAL_EQUAL(Constant constant, int i10, Constant constant2, int i11) {
        switch (i10) {
            case 2:
                switch (i11) {
                    case 2:
                        return BooleanConstant.fromValue(constant.charValue() == constant2.charValue());
                    case 3:
                        return BooleanConstant.fromValue(constant.charValue() == constant2.byteValue());
                    case 4:
                        return BooleanConstant.fromValue(constant.charValue() == constant2.shortValue());
                    case 7:
                        return BooleanConstant.fromValue(((long) constant.charValue()) == constant2.longValue());
                    case 8:
                        return BooleanConstant.fromValue(((double) constant.charValue()) == constant2.doubleValue());
                    case 9:
                        return BooleanConstant.fromValue(((float) constant.charValue()) == constant2.floatValue());
                    case 10:
                        return BooleanConstant.fromValue(constant.charValue() == constant2.intValue());
                }
            case 3:
                switch (i11) {
                    case 2:
                        return BooleanConstant.fromValue(constant.byteValue() == constant2.charValue());
                    case 3:
                        return BooleanConstant.fromValue(constant.byteValue() == constant2.byteValue());
                    case 4:
                        return BooleanConstant.fromValue(constant.byteValue() == constant2.shortValue());
                    case 7:
                        return BooleanConstant.fromValue(((long) constant.byteValue()) == constant2.longValue());
                    case 8:
                        return BooleanConstant.fromValue(((double) constant.byteValue()) == constant2.doubleValue());
                    case 9:
                        return BooleanConstant.fromValue(((float) constant.byteValue()) == constant2.floatValue());
                    case 10:
                        return BooleanConstant.fromValue(constant.byteValue() == constant2.intValue());
                }
            case 4:
                switch (i11) {
                    case 2:
                        return BooleanConstant.fromValue(constant.shortValue() == constant2.charValue());
                    case 3:
                        return BooleanConstant.fromValue(constant.shortValue() == constant2.byteValue());
                    case 4:
                        return BooleanConstant.fromValue(constant.shortValue() == constant2.shortValue());
                    case 7:
                        return BooleanConstant.fromValue(((long) constant.shortValue()) == constant2.longValue());
                    case 8:
                        return BooleanConstant.fromValue(((double) constant.shortValue()) == constant2.doubleValue());
                    case 9:
                        return BooleanConstant.fromValue(((float) constant.shortValue()) == constant2.floatValue());
                    case 10:
                        return BooleanConstant.fromValue(constant.shortValue() == constant2.intValue());
                }
            case 5:
                if (i11 == 5) {
                    return BooleanConstant.fromValue(constant.booleanValue() == constant2.booleanValue());
                }
                break;
            case 7:
                switch (i11) {
                    case 2:
                        return BooleanConstant.fromValue(constant.longValue() == ((long) constant2.charValue()));
                    case 3:
                        return BooleanConstant.fromValue(constant.longValue() == ((long) constant2.byteValue()));
                    case 4:
                        return BooleanConstant.fromValue(constant.longValue() == ((long) constant2.shortValue()));
                    case 7:
                        return BooleanConstant.fromValue(constant.longValue() == constant2.longValue());
                    case 8:
                        return BooleanConstant.fromValue(((double) constant.longValue()) == constant2.doubleValue());
                    case 9:
                        return BooleanConstant.fromValue(((float) constant.longValue()) == constant2.floatValue());
                    case 10:
                        return BooleanConstant.fromValue(constant.longValue() == ((long) constant2.intValue()));
                }
            case 8:
                switch (i11) {
                    case 2:
                        return BooleanConstant.fromValue(constant.doubleValue() == ((double) constant2.charValue()));
                    case 3:
                        return BooleanConstant.fromValue(constant.doubleValue() == ((double) constant2.byteValue()));
                    case 4:
                        return BooleanConstant.fromValue(constant.doubleValue() == ((double) constant2.shortValue()));
                    case 7:
                        return BooleanConstant.fromValue(constant.doubleValue() == ((double) constant2.longValue()));
                    case 8:
                        return BooleanConstant.fromValue(constant.doubleValue() == constant2.doubleValue());
                    case 9:
                        return BooleanConstant.fromValue(constant.doubleValue() == ((double) constant2.floatValue()));
                    case 10:
                        return BooleanConstant.fromValue(constant.doubleValue() == ((double) constant2.intValue()));
                }
            case 9:
                switch (i11) {
                    case 2:
                        return BooleanConstant.fromValue(constant.floatValue() == ((float) constant2.charValue()));
                    case 3:
                        return BooleanConstant.fromValue(constant.floatValue() == ((float) constant2.byteValue()));
                    case 4:
                        return BooleanConstant.fromValue(constant.floatValue() == ((float) constant2.shortValue()));
                    case 7:
                        return BooleanConstant.fromValue(constant.floatValue() == ((float) constant2.longValue()));
                    case 8:
                        return BooleanConstant.fromValue(((double) constant.floatValue()) == constant2.doubleValue());
                    case 9:
                        return BooleanConstant.fromValue(constant.floatValue() == constant2.floatValue());
                    case 10:
                        return BooleanConstant.fromValue(constant.floatValue() == ((float) constant2.intValue()));
                }
            case 10:
                switch (i11) {
                    case 2:
                        return BooleanConstant.fromValue(constant.intValue() == constant2.charValue());
                    case 3:
                        return BooleanConstant.fromValue(constant.intValue() == constant2.byteValue());
                    case 4:
                        return BooleanConstant.fromValue(constant.intValue() == constant2.shortValue());
                    case 7:
                        return BooleanConstant.fromValue(((long) constant.intValue()) == constant2.longValue());
                    case 8:
                        return BooleanConstant.fromValue(((double) constant.intValue()) == constant2.doubleValue());
                    case 9:
                        return BooleanConstant.fromValue(((float) constant.intValue()) == constant2.floatValue());
                    case 10:
                        return BooleanConstant.fromValue(constant.intValue() == constant2.intValue());
                }
            case 11:
                if (i11 == 11) {
                    return BooleanConstant.fromValue(((StringConstant) constant).hasSameValue(constant2));
                }
                break;
            case 12:
                if (i11 == 11) {
                    return BooleanConstant.fromValue(false);
                }
                if (i11 == 12) {
                    return BooleanConstant.fromValue(true);
                }
                break;
        }
        return BooleanConstant.fromValue(false);
    }

    public static final Constant computeConstantOperationGREATER(Constant constant, int i10, Constant constant2, int i11) {
        switch (i10) {
            case 2:
                switch (i11) {
                    case 2:
                        return BooleanConstant.fromValue(constant.charValue() > constant2.charValue());
                    case 3:
                        return BooleanConstant.fromValue(constant.charValue() > constant2.byteValue());
                    case 4:
                        return BooleanConstant.fromValue(constant.charValue() > constant2.shortValue());
                    case 7:
                        return BooleanConstant.fromValue(((long) constant.charValue()) > constant2.longValue());
                    case 8:
                        return BooleanConstant.fromValue(((double) constant.charValue()) > constant2.doubleValue());
                    case 9:
                        return BooleanConstant.fromValue(((float) constant.charValue()) > constant2.floatValue());
                    case 10:
                        return BooleanConstant.fromValue(constant.charValue() > constant2.intValue());
                }
            case 3:
                switch (i11) {
                    case 2:
                        return BooleanConstant.fromValue(constant.byteValue() > constant2.charValue());
                    case 3:
                        return BooleanConstant.fromValue(constant.byteValue() > constant2.byteValue());
                    case 4:
                        return BooleanConstant.fromValue(constant.byteValue() > constant2.shortValue());
                    case 7:
                        return BooleanConstant.fromValue(((long) constant.byteValue()) > constant2.longValue());
                    case 8:
                        return BooleanConstant.fromValue(((double) constant.byteValue()) > constant2.doubleValue());
                    case 9:
                        return BooleanConstant.fromValue(((float) constant.byteValue()) > constant2.floatValue());
                    case 10:
                        return BooleanConstant.fromValue(constant.byteValue() > constant2.intValue());
                }
            case 4:
                switch (i11) {
                    case 2:
                        return BooleanConstant.fromValue(constant.shortValue() > constant2.charValue());
                    case 3:
                        return BooleanConstant.fromValue(constant.shortValue() > constant2.byteValue());
                    case 4:
                        return BooleanConstant.fromValue(constant.shortValue() > constant2.shortValue());
                    case 7:
                        return BooleanConstant.fromValue(((long) constant.shortValue()) > constant2.longValue());
                    case 8:
                        return BooleanConstant.fromValue(((double) constant.shortValue()) > constant2.doubleValue());
                    case 9:
                        return BooleanConstant.fromValue(((float) constant.shortValue()) > constant2.floatValue());
                    case 10:
                        return BooleanConstant.fromValue(constant.shortValue() > constant2.intValue());
                }
            case 7:
                switch (i11) {
                    case 2:
                        return BooleanConstant.fromValue(constant.longValue() > ((long) constant2.charValue()));
                    case 3:
                        return BooleanConstant.fromValue(constant.longValue() > ((long) constant2.byteValue()));
                    case 4:
                        return BooleanConstant.fromValue(constant.longValue() > ((long) constant2.shortValue()));
                    case 7:
                        return BooleanConstant.fromValue(constant.longValue() > constant2.longValue());
                    case 8:
                        return BooleanConstant.fromValue(((double) constant.longValue()) > constant2.doubleValue());
                    case 9:
                        return BooleanConstant.fromValue(((float) constant.longValue()) > constant2.floatValue());
                    case 10:
                        return BooleanConstant.fromValue(constant.longValue() > ((long) constant2.intValue()));
                }
            case 8:
                switch (i11) {
                    case 2:
                        return BooleanConstant.fromValue(constant.doubleValue() > ((double) constant2.charValue()));
                    case 3:
                        return BooleanConstant.fromValue(constant.doubleValue() > ((double) constant2.byteValue()));
                    case 4:
                        return BooleanConstant.fromValue(constant.doubleValue() > ((double) constant2.shortValue()));
                    case 7:
                        return BooleanConstant.fromValue(constant.doubleValue() > ((double) constant2.longValue()));
                    case 8:
                        return BooleanConstant.fromValue(constant.doubleValue() > constant2.doubleValue());
                    case 9:
                        return BooleanConstant.fromValue(constant.doubleValue() > ((double) constant2.floatValue()));
                    case 10:
                        return BooleanConstant.fromValue(constant.doubleValue() > ((double) constant2.intValue()));
                }
            case 9:
                switch (i11) {
                    case 2:
                        return BooleanConstant.fromValue(constant.floatValue() > ((float) constant2.charValue()));
                    case 3:
                        return BooleanConstant.fromValue(constant.floatValue() > ((float) constant2.byteValue()));
                    case 4:
                        return BooleanConstant.fromValue(constant.floatValue() > ((float) constant2.shortValue()));
                    case 7:
                        return BooleanConstant.fromValue(constant.floatValue() > ((float) constant2.longValue()));
                    case 8:
                        return BooleanConstant.fromValue(((double) constant.floatValue()) > constant2.doubleValue());
                    case 9:
                        return BooleanConstant.fromValue(constant.floatValue() > constant2.floatValue());
                    case 10:
                        return BooleanConstant.fromValue(constant.floatValue() > ((float) constant2.intValue()));
                }
            case 10:
                switch (i11) {
                    case 2:
                        return BooleanConstant.fromValue(constant.intValue() > constant2.charValue());
                    case 3:
                        return BooleanConstant.fromValue(constant.intValue() > constant2.byteValue());
                    case 4:
                        return BooleanConstant.fromValue(constant.intValue() > constant2.shortValue());
                    case 7:
                        return BooleanConstant.fromValue(((long) constant.intValue()) > constant2.longValue());
                    case 8:
                        return BooleanConstant.fromValue(((double) constant.intValue()) > constant2.doubleValue());
                    case 9:
                        return BooleanConstant.fromValue(((float) constant.intValue()) > constant2.floatValue());
                    case 10:
                        return BooleanConstant.fromValue(constant.intValue() > constant2.intValue());
                }
        }
        return NotAConstant;
    }

    public static final Constant computeConstantOperationGREATER_EQUAL(Constant constant, int i10, Constant constant2, int i11) {
        switch (i10) {
            case 2:
                switch (i11) {
                    case 2:
                        return BooleanConstant.fromValue(constant.charValue() >= constant2.charValue());
                    case 3:
                        return BooleanConstant.fromValue(constant.charValue() >= constant2.byteValue());
                    case 4:
                        return BooleanConstant.fromValue(constant.charValue() >= constant2.shortValue());
                    case 7:
                        return BooleanConstant.fromValue(((long) constant.charValue()) >= constant2.longValue());
                    case 8:
                        return BooleanConstant.fromValue(((double) constant.charValue()) >= constant2.doubleValue());
                    case 9:
                        return BooleanConstant.fromValue(((float) constant.charValue()) >= constant2.floatValue());
                    case 10:
                        return BooleanConstant.fromValue(constant.charValue() >= constant2.intValue());
                }
            case 3:
                switch (i11) {
                    case 2:
                        return BooleanConstant.fromValue(constant.byteValue() >= constant2.charValue());
                    case 3:
                        return BooleanConstant.fromValue(constant.byteValue() >= constant2.byteValue());
                    case 4:
                        return BooleanConstant.fromValue(constant.byteValue() >= constant2.shortValue());
                    case 7:
                        return BooleanConstant.fromValue(((long) constant.byteValue()) >= constant2.longValue());
                    case 8:
                        return BooleanConstant.fromValue(((double) constant.byteValue()) >= constant2.doubleValue());
                    case 9:
                        return BooleanConstant.fromValue(((float) constant.byteValue()) >= constant2.floatValue());
                    case 10:
                        return BooleanConstant.fromValue(constant.byteValue() >= constant2.intValue());
                }
            case 4:
                switch (i11) {
                    case 2:
                        return BooleanConstant.fromValue(constant.shortValue() >= constant2.charValue());
                    case 3:
                        return BooleanConstant.fromValue(constant.shortValue() >= constant2.byteValue());
                    case 4:
                        return BooleanConstant.fromValue(constant.shortValue() >= constant2.shortValue());
                    case 7:
                        return BooleanConstant.fromValue(((long) constant.shortValue()) >= constant2.longValue());
                    case 8:
                        return BooleanConstant.fromValue(((double) constant.shortValue()) >= constant2.doubleValue());
                    case 9:
                        return BooleanConstant.fromValue(((float) constant.shortValue()) >= constant2.floatValue());
                    case 10:
                        return BooleanConstant.fromValue(constant.shortValue() >= constant2.intValue());
                }
            case 7:
                switch (i11) {
                    case 2:
                        return BooleanConstant.fromValue(constant.longValue() >= ((long) constant2.charValue()));
                    case 3:
                        return BooleanConstant.fromValue(constant.longValue() >= ((long) constant2.byteValue()));
                    case 4:
                        return BooleanConstant.fromValue(constant.longValue() >= ((long) constant2.shortValue()));
                    case 7:
                        return BooleanConstant.fromValue(constant.longValue() >= constant2.longValue());
                    case 8:
                        return BooleanConstant.fromValue(((double) constant.longValue()) >= constant2.doubleValue());
                    case 9:
                        return BooleanConstant.fromValue(((float) constant.longValue()) >= constant2.floatValue());
                    case 10:
                        return BooleanConstant.fromValue(constant.longValue() >= ((long) constant2.intValue()));
                }
            case 8:
                switch (i11) {
                    case 2:
                        return BooleanConstant.fromValue(constant.doubleValue() >= ((double) constant2.charValue()));
                    case 3:
                        return BooleanConstant.fromValue(constant.doubleValue() >= ((double) constant2.byteValue()));
                    case 4:
                        return BooleanConstant.fromValue(constant.doubleValue() >= ((double) constant2.shortValue()));
                    case 7:
                        return BooleanConstant.fromValue(constant.doubleValue() >= ((double) constant2.longValue()));
                    case 8:
                        return BooleanConstant.fromValue(constant.doubleValue() >= constant2.doubleValue());
                    case 9:
                        return BooleanConstant.fromValue(constant.doubleValue() >= ((double) constant2.floatValue()));
                    case 10:
                        return BooleanConstant.fromValue(constant.doubleValue() >= ((double) constant2.intValue()));
                }
            case 9:
                switch (i11) {
                    case 2:
                        return BooleanConstant.fromValue(constant.floatValue() >= ((float) constant2.charValue()));
                    case 3:
                        return BooleanConstant.fromValue(constant.floatValue() >= ((float) constant2.byteValue()));
                    case 4:
                        return BooleanConstant.fromValue(constant.floatValue() >= ((float) constant2.shortValue()));
                    case 7:
                        return BooleanConstant.fromValue(constant.floatValue() >= ((float) constant2.longValue()));
                    case 8:
                        return BooleanConstant.fromValue(((double) constant.floatValue()) >= constant2.doubleValue());
                    case 9:
                        return BooleanConstant.fromValue(constant.floatValue() >= constant2.floatValue());
                    case 10:
                        return BooleanConstant.fromValue(constant.floatValue() >= ((float) constant2.intValue()));
                }
            case 10:
                switch (i11) {
                    case 2:
                        return BooleanConstant.fromValue(constant.intValue() >= constant2.charValue());
                    case 3:
                        return BooleanConstant.fromValue(constant.intValue() >= constant2.byteValue());
                    case 4:
                        return BooleanConstant.fromValue(constant.intValue() >= constant2.shortValue());
                    case 7:
                        return BooleanConstant.fromValue(((long) constant.intValue()) >= constant2.longValue());
                    case 8:
                        return BooleanConstant.fromValue(((double) constant.intValue()) >= constant2.doubleValue());
                    case 9:
                        return BooleanConstant.fromValue(((float) constant.intValue()) >= constant2.floatValue());
                    case 10:
                        return BooleanConstant.fromValue(constant.intValue() >= constant2.intValue());
                }
        }
        return NotAConstant;
    }

    public static final Constant computeConstantOperationLEFT_SHIFT(Constant constant, int i10, Constant constant2, int i11) {
        if (i10 != 2) {
            if (i10 != 3) {
                if (i10 != 4) {
                    if (i10 != 7) {
                        if (i10 == 10) {
                            if (i11 == 2) {
                                return IntConstant.fromValue(constant.intValue() << constant2.charValue());
                            }
                            if (i11 == 3) {
                                return IntConstant.fromValue(constant.intValue() << constant2.byteValue());
                            }
                            if (i11 == 4) {
                                return IntConstant.fromValue(constant.intValue() << constant2.shortValue());
                            }
                            if (i11 == 7) {
                                return IntConstant.fromValue(constant.intValue() << ((int) constant2.longValue()));
                            }
                            if (i11 == 10) {
                                return IntConstant.fromValue(constant.intValue() << constant2.intValue());
                            }
                        }
                    } else {
                        if (i11 == 2) {
                            return LongConstant.fromValue(constant.longValue() << constant2.charValue());
                        }
                        if (i11 == 3) {
                            return LongConstant.fromValue(constant.longValue() << constant2.byteValue());
                        }
                        if (i11 == 4) {
                            return LongConstant.fromValue(constant.longValue() << constant2.shortValue());
                        }
                        if (i11 == 7) {
                            return LongConstant.fromValue(constant.longValue() << ((int) constant2.longValue()));
                        }
                        if (i11 == 10) {
                            return LongConstant.fromValue(constant.longValue() << constant2.intValue());
                        }
                    }
                } else {
                    if (i11 == 2) {
                        return IntConstant.fromValue(constant.shortValue() << constant2.charValue());
                    }
                    if (i11 == 3) {
                        return IntConstant.fromValue(constant.shortValue() << constant2.byteValue());
                    }
                    if (i11 == 4) {
                        return IntConstant.fromValue(constant.shortValue() << constant2.shortValue());
                    }
                    if (i11 == 7) {
                        return IntConstant.fromValue(constant.shortValue() << ((int) constant2.longValue()));
                    }
                    if (i11 == 10) {
                        return IntConstant.fromValue(constant.shortValue() << constant2.intValue());
                    }
                }
            } else {
                if (i11 == 2) {
                    return IntConstant.fromValue(constant.byteValue() << constant2.charValue());
                }
                if (i11 == 3) {
                    return IntConstant.fromValue(constant.byteValue() << constant2.byteValue());
                }
                if (i11 == 4) {
                    return IntConstant.fromValue(constant.byteValue() << constant2.shortValue());
                }
                if (i11 == 7) {
                    return IntConstant.fromValue(constant.byteValue() << ((int) constant2.longValue()));
                }
                if (i11 == 10) {
                    return IntConstant.fromValue(constant.byteValue() << constant2.intValue());
                }
            }
        } else {
            if (i11 == 2) {
                return IntConstant.fromValue(constant.charValue() << constant2.charValue());
            }
            if (i11 == 3) {
                return IntConstant.fromValue(constant.charValue() << constant2.byteValue());
            }
            if (i11 == 4) {
                return IntConstant.fromValue(constant.charValue() << constant2.shortValue());
            }
            if (i11 == 7) {
                return IntConstant.fromValue(constant.charValue() << ((int) constant2.longValue()));
            }
            if (i11 == 10) {
                return IntConstant.fromValue(constant.charValue() << constant2.intValue());
            }
        }
        return NotAConstant;
    }

    public static final Constant computeConstantOperationLESS(Constant constant, int i10, Constant constant2, int i11) {
        switch (i10) {
            case 2:
                switch (i11) {
                    case 2:
                        return BooleanConstant.fromValue(constant.charValue() < constant2.charValue());
                    case 3:
                        return BooleanConstant.fromValue(constant.charValue() < constant2.byteValue());
                    case 4:
                        return BooleanConstant.fromValue(constant.charValue() < constant2.shortValue());
                    case 7:
                        return BooleanConstant.fromValue(((long) constant.charValue()) < constant2.longValue());
                    case 8:
                        return BooleanConstant.fromValue(((double) constant.charValue()) < constant2.doubleValue());
                    case 9:
                        return BooleanConstant.fromValue(((float) constant.charValue()) < constant2.floatValue());
                    case 10:
                        return BooleanConstant.fromValue(constant.charValue() < constant2.intValue());
                }
            case 3:
                switch (i11) {
                    case 2:
                        return BooleanConstant.fromValue(constant.byteValue() < constant2.charValue());
                    case 3:
                        return BooleanConstant.fromValue(constant.byteValue() < constant2.byteValue());
                    case 4:
                        return BooleanConstant.fromValue(constant.byteValue() < constant2.shortValue());
                    case 7:
                        return BooleanConstant.fromValue(((long) constant.byteValue()) < constant2.longValue());
                    case 8:
                        return BooleanConstant.fromValue(((double) constant.byteValue()) < constant2.doubleValue());
                    case 9:
                        return BooleanConstant.fromValue(((float) constant.byteValue()) < constant2.floatValue());
                    case 10:
                        return BooleanConstant.fromValue(constant.byteValue() < constant2.intValue());
                }
            case 4:
                switch (i11) {
                    case 2:
                        return BooleanConstant.fromValue(constant.shortValue() < constant2.charValue());
                    case 3:
                        return BooleanConstant.fromValue(constant.shortValue() < constant2.byteValue());
                    case 4:
                        return BooleanConstant.fromValue(constant.shortValue() < constant2.shortValue());
                    case 7:
                        return BooleanConstant.fromValue(((long) constant.shortValue()) < constant2.longValue());
                    case 8:
                        return BooleanConstant.fromValue(((double) constant.shortValue()) < constant2.doubleValue());
                    case 9:
                        return BooleanConstant.fromValue(((float) constant.shortValue()) < constant2.floatValue());
                    case 10:
                        return BooleanConstant.fromValue(constant.shortValue() < constant2.intValue());
                }
            case 7:
                switch (i11) {
                    case 2:
                        return BooleanConstant.fromValue(constant.longValue() < ((long) constant2.charValue()));
                    case 3:
                        return BooleanConstant.fromValue(constant.longValue() < ((long) constant2.byteValue()));
                    case 4:
                        return BooleanConstant.fromValue(constant.longValue() < ((long) constant2.shortValue()));
                    case 7:
                        return BooleanConstant.fromValue(constant.longValue() < constant2.longValue());
                    case 8:
                        return BooleanConstant.fromValue(((double) constant.longValue()) < constant2.doubleValue());
                    case 9:
                        return BooleanConstant.fromValue(((float) constant.longValue()) < constant2.floatValue());
                    case 10:
                        return BooleanConstant.fromValue(constant.longValue() < ((long) constant2.intValue()));
                }
            case 8:
                switch (i11) {
                    case 2:
                        return BooleanConstant.fromValue(constant.doubleValue() < ((double) constant2.charValue()));
                    case 3:
                        return BooleanConstant.fromValue(constant.doubleValue() < ((double) constant2.byteValue()));
                    case 4:
                        return BooleanConstant.fromValue(constant.doubleValue() < ((double) constant2.shortValue()));
                    case 7:
                        return BooleanConstant.fromValue(constant.doubleValue() < ((double) constant2.longValue()));
                    case 8:
                        return BooleanConstant.fromValue(constant.doubleValue() < constant2.doubleValue());
                    case 9:
                        return BooleanConstant.fromValue(constant.doubleValue() < ((double) constant2.floatValue()));
                    case 10:
                        return BooleanConstant.fromValue(constant.doubleValue() < ((double) constant2.intValue()));
                }
            case 9:
                switch (i11) {
                    case 2:
                        return BooleanConstant.fromValue(constant.floatValue() < ((float) constant2.charValue()));
                    case 3:
                        return BooleanConstant.fromValue(constant.floatValue() < ((float) constant2.byteValue()));
                    case 4:
                        return BooleanConstant.fromValue(constant.floatValue() < ((float) constant2.shortValue()));
                    case 7:
                        return BooleanConstant.fromValue(constant.floatValue() < ((float) constant2.longValue()));
                    case 8:
                        return BooleanConstant.fromValue(((double) constant.floatValue()) < constant2.doubleValue());
                    case 9:
                        return BooleanConstant.fromValue(constant.floatValue() < constant2.floatValue());
                    case 10:
                        return BooleanConstant.fromValue(constant.floatValue() < ((float) constant2.intValue()));
                }
            case 10:
                switch (i11) {
                    case 2:
                        return BooleanConstant.fromValue(constant.intValue() < constant2.charValue());
                    case 3:
                        return BooleanConstant.fromValue(constant.intValue() < constant2.byteValue());
                    case 4:
                        return BooleanConstant.fromValue(constant.intValue() < constant2.shortValue());
                    case 7:
                        return BooleanConstant.fromValue(((long) constant.intValue()) < constant2.longValue());
                    case 8:
                        return BooleanConstant.fromValue(((double) constant.intValue()) < constant2.doubleValue());
                    case 9:
                        return BooleanConstant.fromValue(((float) constant.intValue()) < constant2.floatValue());
                    case 10:
                        return BooleanConstant.fromValue(constant.intValue() < constant2.intValue());
                }
        }
        return NotAConstant;
    }

    public static final Constant computeConstantOperationLESS_EQUAL(Constant constant, int i10, Constant constant2, int i11) {
        switch (i10) {
            case 2:
                switch (i11) {
                    case 2:
                        return BooleanConstant.fromValue(constant.charValue() <= constant2.charValue());
                    case 3:
                        return BooleanConstant.fromValue(constant.charValue() <= constant2.byteValue());
                    case 4:
                        return BooleanConstant.fromValue(constant.charValue() <= constant2.shortValue());
                    case 7:
                        return BooleanConstant.fromValue(((long) constant.charValue()) <= constant2.longValue());
                    case 8:
                        return BooleanConstant.fromValue(((double) constant.charValue()) <= constant2.doubleValue());
                    case 9:
                        return BooleanConstant.fromValue(((float) constant.charValue()) <= constant2.floatValue());
                    case 10:
                        return BooleanConstant.fromValue(constant.charValue() <= constant2.intValue());
                }
            case 3:
                switch (i11) {
                    case 2:
                        return BooleanConstant.fromValue(constant.byteValue() <= constant2.charValue());
                    case 3:
                        return BooleanConstant.fromValue(constant.byteValue() <= constant2.byteValue());
                    case 4:
                        return BooleanConstant.fromValue(constant.byteValue() <= constant2.shortValue());
                    case 7:
                        return BooleanConstant.fromValue(((long) constant.byteValue()) <= constant2.longValue());
                    case 8:
                        return BooleanConstant.fromValue(((double) constant.byteValue()) <= constant2.doubleValue());
                    case 9:
                        return BooleanConstant.fromValue(((float) constant.byteValue()) <= constant2.floatValue());
                    case 10:
                        return BooleanConstant.fromValue(constant.byteValue() <= constant2.intValue());
                }
            case 4:
                switch (i11) {
                    case 2:
                        return BooleanConstant.fromValue(constant.shortValue() <= constant2.charValue());
                    case 3:
                        return BooleanConstant.fromValue(constant.shortValue() <= constant2.byteValue());
                    case 4:
                        return BooleanConstant.fromValue(constant.shortValue() <= constant2.shortValue());
                    case 7:
                        return BooleanConstant.fromValue(((long) constant.shortValue()) <= constant2.longValue());
                    case 8:
                        return BooleanConstant.fromValue(((double) constant.shortValue()) <= constant2.doubleValue());
                    case 9:
                        return BooleanConstant.fromValue(((float) constant.shortValue()) <= constant2.floatValue());
                    case 10:
                        return BooleanConstant.fromValue(constant.shortValue() <= constant2.intValue());
                }
            case 7:
                switch (i11) {
                    case 2:
                        return BooleanConstant.fromValue(constant.longValue() <= ((long) constant2.charValue()));
                    case 3:
                        return BooleanConstant.fromValue(constant.longValue() <= ((long) constant2.byteValue()));
                    case 4:
                        return BooleanConstant.fromValue(constant.longValue() <= ((long) constant2.shortValue()));
                    case 7:
                        return BooleanConstant.fromValue(constant.longValue() <= constant2.longValue());
                    case 8:
                        return BooleanConstant.fromValue(((double) constant.longValue()) <= constant2.doubleValue());
                    case 9:
                        return BooleanConstant.fromValue(((float) constant.longValue()) <= constant2.floatValue());
                    case 10:
                        return BooleanConstant.fromValue(constant.longValue() <= ((long) constant2.intValue()));
                }
            case 8:
                switch (i11) {
                    case 2:
                        return BooleanConstant.fromValue(constant.doubleValue() <= ((double) constant2.charValue()));
                    case 3:
                        return BooleanConstant.fromValue(constant.doubleValue() <= ((double) constant2.byteValue()));
                    case 4:
                        return BooleanConstant.fromValue(constant.doubleValue() <= ((double) constant2.shortValue()));
                    case 7:
                        return BooleanConstant.fromValue(constant.doubleValue() <= ((double) constant2.longValue()));
                    case 8:
                        return BooleanConstant.fromValue(constant.doubleValue() <= constant2.doubleValue());
                    case 9:
                        return BooleanConstant.fromValue(constant.doubleValue() <= ((double) constant2.floatValue()));
                    case 10:
                        return BooleanConstant.fromValue(constant.doubleValue() <= ((double) constant2.intValue()));
                }
            case 9:
                switch (i11) {
                    case 2:
                        return BooleanConstant.fromValue(constant.floatValue() <= ((float) constant2.charValue()));
                    case 3:
                        return BooleanConstant.fromValue(constant.floatValue() <= ((float) constant2.byteValue()));
                    case 4:
                        return BooleanConstant.fromValue(constant.floatValue() <= ((float) constant2.shortValue()));
                    case 7:
                        return BooleanConstant.fromValue(constant.floatValue() <= ((float) constant2.longValue()));
                    case 8:
                        return BooleanConstant.fromValue(((double) constant.floatValue()) <= constant2.doubleValue());
                    case 9:
                        return BooleanConstant.fromValue(constant.floatValue() <= constant2.floatValue());
                    case 10:
                        return BooleanConstant.fromValue(constant.floatValue() <= ((float) constant2.intValue()));
                }
            case 10:
                switch (i11) {
                    case 2:
                        return BooleanConstant.fromValue(constant.intValue() <= constant2.charValue());
                    case 3:
                        return BooleanConstant.fromValue(constant.intValue() <= constant2.byteValue());
                    case 4:
                        return BooleanConstant.fromValue(constant.intValue() <= constant2.shortValue());
                    case 7:
                        return BooleanConstant.fromValue(((long) constant.intValue()) <= constant2.longValue());
                    case 8:
                        return BooleanConstant.fromValue(((double) constant.intValue()) <= constant2.doubleValue());
                    case 9:
                        return BooleanConstant.fromValue(((float) constant.intValue()) <= constant2.floatValue());
                    case 10:
                        return BooleanConstant.fromValue(constant.intValue() <= constant2.intValue());
                }
        }
        return NotAConstant;
    }

    public static final Constant computeConstantOperationMINUS(Constant constant, int i10, Constant constant2, int i11) {
        switch (i10) {
            case 2:
                switch (i11) {
                    case 2:
                        return IntConstant.fromValue(constant.charValue() - constant2.charValue());
                    case 3:
                        return IntConstant.fromValue(constant.charValue() - constant2.byteValue());
                    case 4:
                        return IntConstant.fromValue(constant.charValue() - constant2.shortValue());
                    case 7:
                        return LongConstant.fromValue(constant.charValue() - constant2.longValue());
                    case 8:
                        return DoubleConstant.fromValue(constant.charValue() - constant2.doubleValue());
                    case 9:
                        return FloatConstant.fromValue(constant.charValue() - constant2.floatValue());
                    case 10:
                        return IntConstant.fromValue(constant.charValue() - constant2.intValue());
                }
            case 3:
                switch (i11) {
                    case 2:
                        return IntConstant.fromValue(constant.byteValue() - constant2.charValue());
                    case 3:
                        return IntConstant.fromValue(constant.byteValue() - constant2.byteValue());
                    case 4:
                        return IntConstant.fromValue(constant.byteValue() - constant2.shortValue());
                    case 7:
                        return LongConstant.fromValue(constant.byteValue() - constant2.longValue());
                    case 8:
                        return DoubleConstant.fromValue(constant.byteValue() - constant2.doubleValue());
                    case 9:
                        return FloatConstant.fromValue(constant.byteValue() - constant2.floatValue());
                    case 10:
                        return IntConstant.fromValue(constant.byteValue() - constant2.intValue());
                }
            case 4:
                switch (i11) {
                    case 2:
                        return IntConstant.fromValue(constant.shortValue() - constant2.charValue());
                    case 3:
                        return IntConstant.fromValue(constant.shortValue() - constant2.byteValue());
                    case 4:
                        return IntConstant.fromValue(constant.shortValue() - constant2.shortValue());
                    case 7:
                        return LongConstant.fromValue(constant.shortValue() - constant2.longValue());
                    case 8:
                        return DoubleConstant.fromValue(constant.shortValue() - constant2.doubleValue());
                    case 9:
                        return FloatConstant.fromValue(constant.shortValue() - constant2.floatValue());
                    case 10:
                        return IntConstant.fromValue(constant.shortValue() - constant2.intValue());
                }
            case 7:
                switch (i11) {
                    case 2:
                        return LongConstant.fromValue(constant.longValue() - constant2.charValue());
                    case 3:
                        return LongConstant.fromValue(constant.longValue() - constant2.byteValue());
                    case 4:
                        return LongConstant.fromValue(constant.longValue() - constant2.shortValue());
                    case 7:
                        return LongConstant.fromValue(constant.longValue() - constant2.longValue());
                    case 8:
                        return DoubleConstant.fromValue(constant.longValue() - constant2.doubleValue());
                    case 9:
                        return FloatConstant.fromValue(((float) constant.longValue()) - constant2.floatValue());
                    case 10:
                        return LongConstant.fromValue(constant.longValue() - constant2.intValue());
                }
            case 8:
                switch (i11) {
                    case 2:
                        return DoubleConstant.fromValue(constant.doubleValue() - constant2.charValue());
                    case 3:
                        return DoubleConstant.fromValue(constant.doubleValue() - constant2.byteValue());
                    case 4:
                        return DoubleConstant.fromValue(constant.doubleValue() - constant2.shortValue());
                    case 7:
                        return DoubleConstant.fromValue(constant.doubleValue() - constant2.longValue());
                    case 8:
                        return DoubleConstant.fromValue(constant.doubleValue() - constant2.doubleValue());
                    case 9:
                        return DoubleConstant.fromValue(constant.doubleValue() - constant2.floatValue());
                    case 10:
                        return DoubleConstant.fromValue(constant.doubleValue() - constant2.intValue());
                }
            case 9:
                switch (i11) {
                    case 2:
                        return FloatConstant.fromValue(constant.floatValue() - constant2.charValue());
                    case 3:
                        return FloatConstant.fromValue(constant.floatValue() - constant2.byteValue());
                    case 4:
                        return FloatConstant.fromValue(constant.floatValue() - constant2.shortValue());
                    case 7:
                        return FloatConstant.fromValue(constant.floatValue() - ((float) constant2.longValue()));
                    case 8:
                        return DoubleConstant.fromValue(constant.floatValue() - constant2.doubleValue());
                    case 9:
                        return FloatConstant.fromValue(constant.floatValue() - constant2.floatValue());
                    case 10:
                        return FloatConstant.fromValue(constant.floatValue() - constant2.intValue());
                }
            case 10:
                switch (i11) {
                    case 2:
                        return IntConstant.fromValue(constant.intValue() - constant2.charValue());
                    case 3:
                        return IntConstant.fromValue(constant.intValue() - constant2.byteValue());
                    case 4:
                        return IntConstant.fromValue(constant.intValue() - constant2.shortValue());
                    case 7:
                        return LongConstant.fromValue(constant.intValue() - constant2.longValue());
                    case 8:
                        return DoubleConstant.fromValue(constant.intValue() - constant2.doubleValue());
                    case 9:
                        return FloatConstant.fromValue(constant.intValue() - constant2.floatValue());
                    case 10:
                        return IntConstant.fromValue(constant.intValue() - constant2.intValue());
                }
        }
        return NotAConstant;
    }

    public static final Constant computeConstantOperationMULTIPLY(Constant constant, int i10, Constant constant2, int i11) {
        switch (i10) {
            case 2:
                switch (i11) {
                    case 2:
                        return IntConstant.fromValue(constant.charValue() * constant2.charValue());
                    case 3:
                        return IntConstant.fromValue(constant.charValue() * constant2.byteValue());
                    case 4:
                        return IntConstant.fromValue(constant.charValue() * constant2.shortValue());
                    case 7:
                        return LongConstant.fromValue(constant.charValue() * constant2.longValue());
                    case 8:
                        return DoubleConstant.fromValue(constant.charValue() * constant2.doubleValue());
                    case 9:
                        return FloatConstant.fromValue(constant.charValue() * constant2.floatValue());
                    case 10:
                        return IntConstant.fromValue(constant.charValue() * constant2.intValue());
                }
            case 3:
                switch (i11) {
                    case 2:
                        return IntConstant.fromValue(constant.byteValue() * constant2.charValue());
                    case 3:
                        return IntConstant.fromValue(constant.byteValue() * constant2.byteValue());
                    case 4:
                        return IntConstant.fromValue(constant.byteValue() * constant2.shortValue());
                    case 7:
                        return LongConstant.fromValue(constant.byteValue() * constant2.longValue());
                    case 8:
                        return DoubleConstant.fromValue(constant.byteValue() * constant2.doubleValue());
                    case 9:
                        return FloatConstant.fromValue(constant.byteValue() * constant2.floatValue());
                    case 10:
                        return IntConstant.fromValue(constant.byteValue() * constant2.intValue());
                }
            case 4:
                switch (i11) {
                    case 2:
                        return IntConstant.fromValue(constant.shortValue() * constant2.charValue());
                    case 3:
                        return IntConstant.fromValue(constant.shortValue() * constant2.byteValue());
                    case 4:
                        return IntConstant.fromValue(constant.shortValue() * constant2.shortValue());
                    case 7:
                        return LongConstant.fromValue(constant.shortValue() * constant2.longValue());
                    case 8:
                        return DoubleConstant.fromValue(constant.shortValue() * constant2.doubleValue());
                    case 9:
                        return FloatConstant.fromValue(constant.shortValue() * constant2.floatValue());
                    case 10:
                        return IntConstant.fromValue(constant.shortValue() * constant2.intValue());
                }
            case 7:
                switch (i11) {
                    case 2:
                        return LongConstant.fromValue(constant.longValue() * constant2.charValue());
                    case 3:
                        return LongConstant.fromValue(constant.longValue() * constant2.byteValue());
                    case 4:
                        return LongConstant.fromValue(constant.longValue() * constant2.shortValue());
                    case 7:
                        return LongConstant.fromValue(constant.longValue() * constant2.longValue());
                    case 8:
                        return DoubleConstant.fromValue(constant.longValue() * constant2.doubleValue());
                    case 9:
                        return FloatConstant.fromValue(((float) constant.longValue()) * constant2.floatValue());
                    case 10:
                        return LongConstant.fromValue(constant.longValue() * constant2.intValue());
                }
            case 8:
                switch (i11) {
                    case 2:
                        return DoubleConstant.fromValue(constant.doubleValue() * constant2.charValue());
                    case 3:
                        return DoubleConstant.fromValue(constant.doubleValue() * constant2.byteValue());
                    case 4:
                        return DoubleConstant.fromValue(constant.doubleValue() * constant2.shortValue());
                    case 7:
                        return DoubleConstant.fromValue(constant.doubleValue() * constant2.longValue());
                    case 8:
                        return DoubleConstant.fromValue(constant.doubleValue() * constant2.doubleValue());
                    case 9:
                        return DoubleConstant.fromValue(constant.doubleValue() * constant2.floatValue());
                    case 10:
                        return DoubleConstant.fromValue(constant.doubleValue() * constant2.intValue());
                }
            case 9:
                switch (i11) {
                    case 2:
                        return FloatConstant.fromValue(constant.floatValue() * constant2.charValue());
                    case 3:
                        return FloatConstant.fromValue(constant.floatValue() * constant2.byteValue());
                    case 4:
                        return FloatConstant.fromValue(constant.floatValue() * constant2.shortValue());
                    case 7:
                        return FloatConstant.fromValue(constant.floatValue() * ((float) constant2.longValue()));
                    case 8:
                        return DoubleConstant.fromValue(constant.floatValue() * constant2.doubleValue());
                    case 9:
                        return FloatConstant.fromValue(constant.floatValue() * constant2.floatValue());
                    case 10:
                        return FloatConstant.fromValue(constant.floatValue() * constant2.intValue());
                }
            case 10:
                switch (i11) {
                    case 2:
                        return IntConstant.fromValue(constant.intValue() * constant2.charValue());
                    case 3:
                        return IntConstant.fromValue(constant.intValue() * constant2.byteValue());
                    case 4:
                        return IntConstant.fromValue(constant.intValue() * constant2.shortValue());
                    case 7:
                        return LongConstant.fromValue(constant.intValue() * constant2.longValue());
                    case 8:
                        return DoubleConstant.fromValue(constant.intValue() * constant2.doubleValue());
                    case 9:
                        return FloatConstant.fromValue(constant.intValue() * constant2.floatValue());
                    case 10:
                        return IntConstant.fromValue(constant.intValue() * constant2.intValue());
                }
        }
        return NotAConstant;
    }

    public static final Constant computeConstantOperationOR(Constant constant, int i10, Constant constant2, int i11) {
        if (i10 != 2) {
            if (i10 != 3) {
                if (i10 != 4) {
                    if (i10 == 5) {
                        return BooleanConstant.fromValue(constant.booleanValue() | constant2.booleanValue());
                    }
                    if (i10 != 7) {
                        if (i10 == 10) {
                            if (i11 == 2) {
                                return IntConstant.fromValue(constant.intValue() | constant2.charValue());
                            }
                            if (i11 == 3) {
                                return IntConstant.fromValue(constant.intValue() | constant2.byteValue());
                            }
                            if (i11 == 4) {
                                return IntConstant.fromValue(constant.intValue() | constant2.shortValue());
                            }
                            if (i11 == 7) {
                                return LongConstant.fromValue(constant.intValue() | constant2.longValue());
                            }
                            if (i11 == 10) {
                                return IntConstant.fromValue(constant.intValue() | constant2.intValue());
                            }
                        }
                    } else {
                        if (i11 == 2) {
                            return LongConstant.fromValue(constant.longValue() | constant2.charValue());
                        }
                        if (i11 == 3) {
                            return LongConstant.fromValue(constant.longValue() | constant2.byteValue());
                        }
                        if (i11 == 4) {
                            return LongConstant.fromValue(constant.longValue() | constant2.shortValue());
                        }
                        if (i11 == 7) {
                            return LongConstant.fromValue(constant.longValue() | constant2.longValue());
                        }
                        if (i11 == 10) {
                            return LongConstant.fromValue(constant.longValue() | constant2.intValue());
                        }
                    }
                } else {
                    if (i11 == 2) {
                        return IntConstant.fromValue(constant.shortValue() | constant2.charValue());
                    }
                    if (i11 == 3) {
                        return IntConstant.fromValue(constant.shortValue() | constant2.byteValue());
                    }
                    if (i11 == 4) {
                        return IntConstant.fromValue(constant.shortValue() | constant2.shortValue());
                    }
                    if (i11 == 7) {
                        return LongConstant.fromValue(constant.shortValue() | constant2.longValue());
                    }
                    if (i11 == 10) {
                        return IntConstant.fromValue(constant.shortValue() | constant2.intValue());
                    }
                }
            } else {
                if (i11 == 2) {
                    return IntConstant.fromValue(constant.byteValue() | constant2.charValue());
                }
                if (i11 == 3) {
                    return IntConstant.fromValue(constant.byteValue() | constant2.byteValue());
                }
                if (i11 == 4) {
                    return IntConstant.fromValue(constant.byteValue() | constant2.shortValue());
                }
                if (i11 == 7) {
                    return LongConstant.fromValue(constant.byteValue() | constant2.longValue());
                }
                if (i11 == 10) {
                    return IntConstant.fromValue(constant.byteValue() | constant2.intValue());
                }
            }
        } else {
            if (i11 == 2) {
                return IntConstant.fromValue(constant.charValue() | constant2.charValue());
            }
            if (i11 == 3) {
                return IntConstant.fromValue(constant.charValue() | constant2.byteValue());
            }
            if (i11 == 4) {
                return IntConstant.fromValue(constant.charValue() | constant2.shortValue());
            }
            if (i11 == 7) {
                return LongConstant.fromValue(constant.charValue() | constant2.longValue());
            }
            if (i11 == 10) {
                return IntConstant.fromValue(constant.charValue() | constant2.intValue());
            }
        }
        return NotAConstant;
    }

    public static final Constant computeConstantOperationOR_OR(Constant constant, int i10, Constant constant2, int i11) {
        return BooleanConstant.fromValue(constant.booleanValue() || constant2.booleanValue());
    }

    public static final Constant computeConstantOperationPLUS(Constant constant, int i10, Constant constant2, int i11) {
        switch (i10) {
            case 1:
                if (i11 == 11) {
                    return StringConstant.fromValue(String.valueOf(constant.stringValue()) + constant2.stringValue());
                }
                break;
            case 2:
                switch (i11) {
                    case 2:
                        return IntConstant.fromValue(constant.charValue() + constant2.charValue());
                    case 3:
                        return IntConstant.fromValue(constant.charValue() + constant2.byteValue());
                    case 4:
                        return IntConstant.fromValue(constant.charValue() + constant2.shortValue());
                    case 7:
                        return LongConstant.fromValue(constant.charValue() + constant2.longValue());
                    case 8:
                        return DoubleConstant.fromValue(constant.charValue() + constant2.doubleValue());
                    case 9:
                        return FloatConstant.fromValue(constant.charValue() + constant2.floatValue());
                    case 10:
                        return IntConstant.fromValue(constant.charValue() + constant2.intValue());
                    case 11:
                        return StringConstant.fromValue(String.valueOf(constant.stringValue()) + constant2.stringValue());
                }
            case 3:
                switch (i11) {
                    case 2:
                        return IntConstant.fromValue(constant.byteValue() + constant2.charValue());
                    case 3:
                        return IntConstant.fromValue(constant.byteValue() + constant2.byteValue());
                    case 4:
                        return IntConstant.fromValue(constant.byteValue() + constant2.shortValue());
                    case 7:
                        return LongConstant.fromValue(constant.byteValue() + constant2.longValue());
                    case 8:
                        return DoubleConstant.fromValue(constant.byteValue() + constant2.doubleValue());
                    case 9:
                        return FloatConstant.fromValue(constant.byteValue() + constant2.floatValue());
                    case 10:
                        return IntConstant.fromValue(constant.byteValue() + constant2.intValue());
                    case 11:
                        return StringConstant.fromValue(String.valueOf(constant.stringValue()) + constant2.stringValue());
                }
            case 4:
                switch (i11) {
                    case 2:
                        return IntConstant.fromValue(constant.shortValue() + constant2.charValue());
                    case 3:
                        return IntConstant.fromValue(constant.shortValue() + constant2.byteValue());
                    case 4:
                        return IntConstant.fromValue(constant.shortValue() + constant2.shortValue());
                    case 7:
                        return LongConstant.fromValue(constant.shortValue() + constant2.longValue());
                    case 8:
                        return DoubleConstant.fromValue(constant.shortValue() + constant2.doubleValue());
                    case 9:
                        return FloatConstant.fromValue(constant.shortValue() + constant2.floatValue());
                    case 10:
                        return IntConstant.fromValue(constant.shortValue() + constant2.intValue());
                    case 11:
                        return StringConstant.fromValue(String.valueOf(constant.stringValue()) + constant2.stringValue());
                }
            case 5:
                if (i11 == 11) {
                    return StringConstant.fromValue(String.valueOf(constant.stringValue()) + constant2.stringValue());
                }
                break;
            case 7:
                switch (i11) {
                    case 2:
                        return LongConstant.fromValue(constant.longValue() + constant2.charValue());
                    case 3:
                        return LongConstant.fromValue(constant.longValue() + constant2.byteValue());
                    case 4:
                        return LongConstant.fromValue(constant.longValue() + constant2.shortValue());
                    case 7:
                        return LongConstant.fromValue(constant.longValue() + constant2.longValue());
                    case 8:
                        return DoubleConstant.fromValue(constant.longValue() + constant2.doubleValue());
                    case 9:
                        return FloatConstant.fromValue(((float) constant.longValue()) + constant2.floatValue());
                    case 10:
                        return LongConstant.fromValue(constant.longValue() + constant2.intValue());
                    case 11:
                        return StringConstant.fromValue(String.valueOf(constant.stringValue()) + constant2.stringValue());
                }
            case 8:
                switch (i11) {
                    case 2:
                        return DoubleConstant.fromValue(constant.doubleValue() + constant2.charValue());
                    case 3:
                        return DoubleConstant.fromValue(constant.doubleValue() + constant2.byteValue());
                    case 4:
                        return DoubleConstant.fromValue(constant.doubleValue() + constant2.shortValue());
                    case 7:
                        return DoubleConstant.fromValue(constant.doubleValue() + constant2.longValue());
                    case 8:
                        return DoubleConstant.fromValue(constant.doubleValue() + constant2.doubleValue());
                    case 9:
                        return DoubleConstant.fromValue(constant.doubleValue() + constant2.floatValue());
                    case 10:
                        return DoubleConstant.fromValue(constant.doubleValue() + constant2.intValue());
                    case 11:
                        return StringConstant.fromValue(String.valueOf(constant.stringValue()) + constant2.stringValue());
                }
            case 9:
                switch (i11) {
                    case 2:
                        return FloatConstant.fromValue(constant.floatValue() + constant2.charValue());
                    case 3:
                        return FloatConstant.fromValue(constant.floatValue() + constant2.byteValue());
                    case 4:
                        return FloatConstant.fromValue(constant.floatValue() + constant2.shortValue());
                    case 7:
                        return FloatConstant.fromValue(constant.floatValue() + ((float) constant2.longValue()));
                    case 8:
                        return DoubleConstant.fromValue(constant.floatValue() + constant2.doubleValue());
                    case 9:
                        return FloatConstant.fromValue(constant.floatValue() + constant2.floatValue());
                    case 10:
                        return FloatConstant.fromValue(constant.floatValue() + constant2.intValue());
                    case 11:
                        return StringConstant.fromValue(String.valueOf(constant.stringValue()) + constant2.stringValue());
                }
            case 10:
                switch (i11) {
                    case 2:
                        return IntConstant.fromValue(constant.intValue() + constant2.charValue());
                    case 3:
                        return IntConstant.fromValue(constant.intValue() + constant2.byteValue());
                    case 4:
                        return IntConstant.fromValue(constant.intValue() + constant2.shortValue());
                    case 7:
                        return LongConstant.fromValue(constant.intValue() + constant2.longValue());
                    case 8:
                        return DoubleConstant.fromValue(constant.intValue() + constant2.doubleValue());
                    case 9:
                        return FloatConstant.fromValue(constant.intValue() + constant2.floatValue());
                    case 10:
                        return IntConstant.fromValue(constant.intValue() + constant2.intValue());
                    case 11:
                        return StringConstant.fromValue(String.valueOf(constant.stringValue()) + constant2.stringValue());
                }
            case 11:
                switch (i11) {
                    case 2:
                        return StringConstant.fromValue(String.valueOf(constant.stringValue()) + String.valueOf(constant2.charValue()));
                    case 3:
                        return StringConstant.fromValue(String.valueOf(constant.stringValue()) + String.valueOf((int) constant2.byteValue()));
                    case 4:
                        return StringConstant.fromValue(String.valueOf(constant.stringValue()) + String.valueOf((int) constant2.shortValue()));
                    case 5:
                        return StringConstant.fromValue(String.valueOf(constant.stringValue()) + constant2.booleanValue());
                    case 7:
                        return StringConstant.fromValue(String.valueOf(constant.stringValue()) + String.valueOf(constant2.longValue()));
                    case 8:
                        return StringConstant.fromValue(String.valueOf(constant.stringValue()) + String.valueOf(constant2.doubleValue()));
                    case 9:
                        return StringConstant.fromValue(String.valueOf(constant.stringValue()) + String.valueOf(constant2.floatValue()));
                    case 10:
                        return StringConstant.fromValue(String.valueOf(constant.stringValue()) + String.valueOf(constant2.intValue()));
                    case 11:
                        return StringConstant.fromValue(String.valueOf(constant.stringValue()) + constant2.stringValue());
                }
        }
        return NotAConstant;
    }

    public static final Constant computeConstantOperationREMAINDER(Constant constant, int i10, Constant constant2, int i11) {
        switch (i10) {
            case 2:
                switch (i11) {
                    case 2:
                        return IntConstant.fromValue(constant.charValue() % constant2.charValue());
                    case 3:
                        return IntConstant.fromValue(constant.charValue() % constant2.byteValue());
                    case 4:
                        return IntConstant.fromValue(constant.charValue() % constant2.shortValue());
                    case 7:
                        return LongConstant.fromValue(constant.charValue() % constant2.longValue());
                    case 8:
                        return DoubleConstant.fromValue(constant.charValue() % constant2.doubleValue());
                    case 9:
                        return FloatConstant.fromValue(constant.charValue() % constant2.floatValue());
                    case 10:
                        return IntConstant.fromValue(constant.charValue() % constant2.intValue());
                }
            case 3:
                switch (i11) {
                    case 2:
                        return IntConstant.fromValue(constant.byteValue() % constant2.charValue());
                    case 3:
                        return IntConstant.fromValue(constant.byteValue() % constant2.byteValue());
                    case 4:
                        return IntConstant.fromValue(constant.byteValue() % constant2.shortValue());
                    case 7:
                        return LongConstant.fromValue(constant.byteValue() % constant2.longValue());
                    case 8:
                        return DoubleConstant.fromValue(constant.byteValue() % constant2.doubleValue());
                    case 9:
                        return FloatConstant.fromValue(constant.byteValue() % constant2.floatValue());
                    case 10:
                        return IntConstant.fromValue(constant.byteValue() % constant2.intValue());
                }
            case 4:
                switch (i11) {
                    case 2:
                        return IntConstant.fromValue(constant.shortValue() % constant2.charValue());
                    case 3:
                        return IntConstant.fromValue(constant.shortValue() % constant2.byteValue());
                    case 4:
                        return IntConstant.fromValue(constant.shortValue() % constant2.shortValue());
                    case 7:
                        return LongConstant.fromValue(constant.shortValue() % constant2.longValue());
                    case 8:
                        return DoubleConstant.fromValue(constant.shortValue() % constant2.doubleValue());
                    case 9:
                        return FloatConstant.fromValue(constant.shortValue() % constant2.floatValue());
                    case 10:
                        return IntConstant.fromValue(constant.shortValue() % constant2.intValue());
                }
            case 7:
                switch (i11) {
                    case 2:
                        return LongConstant.fromValue(constant.longValue() % constant2.charValue());
                    case 3:
                        return LongConstant.fromValue(constant.longValue() % constant2.byteValue());
                    case 4:
                        return LongConstant.fromValue(constant.longValue() % constant2.shortValue());
                    case 7:
                        return LongConstant.fromValue(constant.longValue() % constant2.longValue());
                    case 8:
                        return DoubleConstant.fromValue(constant.longValue() % constant2.doubleValue());
                    case 9:
                        return FloatConstant.fromValue(((float) constant.longValue()) % constant2.floatValue());
                    case 10:
                        return LongConstant.fromValue(constant.longValue() % constant2.intValue());
                }
            case 8:
                switch (i11) {
                    case 2:
                        return DoubleConstant.fromValue(constant.doubleValue() % constant2.charValue());
                    case 3:
                        return DoubleConstant.fromValue(constant.doubleValue() % constant2.byteValue());
                    case 4:
                        return DoubleConstant.fromValue(constant.doubleValue() % constant2.shortValue());
                    case 7:
                        return DoubleConstant.fromValue(constant.doubleValue() % constant2.longValue());
                    case 8:
                        return DoubleConstant.fromValue(constant.doubleValue() % constant2.doubleValue());
                    case 9:
                        return DoubleConstant.fromValue(constant.doubleValue() % constant2.floatValue());
                    case 10:
                        return DoubleConstant.fromValue(constant.doubleValue() % constant2.intValue());
                }
            case 9:
                switch (i11) {
                    case 2:
                        return FloatConstant.fromValue(constant.floatValue() % constant2.charValue());
                    case 3:
                        return FloatConstant.fromValue(constant.floatValue() % constant2.byteValue());
                    case 4:
                        return FloatConstant.fromValue(constant.floatValue() % constant2.shortValue());
                    case 7:
                        return FloatConstant.fromValue(constant.floatValue() % ((float) constant2.longValue()));
                    case 8:
                        return DoubleConstant.fromValue(constant.floatValue() % constant2.doubleValue());
                    case 9:
                        return FloatConstant.fromValue(constant.floatValue() % constant2.floatValue());
                    case 10:
                        return FloatConstant.fromValue(constant.floatValue() % constant2.intValue());
                }
            case 10:
                switch (i11) {
                    case 2:
                        return IntConstant.fromValue(constant.intValue() % constant2.charValue());
                    case 3:
                        return IntConstant.fromValue(constant.intValue() % constant2.byteValue());
                    case 4:
                        return IntConstant.fromValue(constant.intValue() % constant2.shortValue());
                    case 7:
                        return LongConstant.fromValue(constant.intValue() % constant2.longValue());
                    case 8:
                        return DoubleConstant.fromValue(constant.intValue() % constant2.doubleValue());
                    case 9:
                        return FloatConstant.fromValue(constant.intValue() % constant2.floatValue());
                    case 10:
                        return IntConstant.fromValue(constant.intValue() % constant2.intValue());
                }
        }
        return NotAConstant;
    }

    public static final Constant computeConstantOperationRIGHT_SHIFT(Constant constant, int i10, Constant constant2, int i11) {
        if (i10 != 2) {
            if (i10 != 3) {
                if (i10 != 4) {
                    if (i10 != 7) {
                        if (i10 == 10) {
                            if (i11 == 2) {
                                return IntConstant.fromValue(constant.intValue() >> constant2.charValue());
                            }
                            if (i11 == 3) {
                                return IntConstant.fromValue(constant.intValue() >> constant2.byteValue());
                            }
                            if (i11 == 4) {
                                return IntConstant.fromValue(constant.intValue() >> constant2.shortValue());
                            }
                            if (i11 == 7) {
                                return IntConstant.fromValue(constant.intValue() >> ((int) constant2.longValue()));
                            }
                            if (i11 == 10) {
                                return IntConstant.fromValue(constant.intValue() >> constant2.intValue());
                            }
                        }
                    } else {
                        if (i11 == 2) {
                            return LongConstant.fromValue(constant.longValue() >> constant2.charValue());
                        }
                        if (i11 == 3) {
                            return LongConstant.fromValue(constant.longValue() >> constant2.byteValue());
                        }
                        if (i11 == 4) {
                            return LongConstant.fromValue(constant.longValue() >> constant2.shortValue());
                        }
                        if (i11 == 7) {
                            return LongConstant.fromValue(constant.longValue() >> ((int) constant2.longValue()));
                        }
                        if (i11 == 10) {
                            return LongConstant.fromValue(constant.longValue() >> constant2.intValue());
                        }
                    }
                } else {
                    if (i11 == 2) {
                        return IntConstant.fromValue(constant.shortValue() >> constant2.charValue());
                    }
                    if (i11 == 3) {
                        return IntConstant.fromValue(constant.shortValue() >> constant2.byteValue());
                    }
                    if (i11 == 4) {
                        return IntConstant.fromValue(constant.shortValue() >> constant2.shortValue());
                    }
                    if (i11 == 7) {
                        return IntConstant.fromValue(constant.shortValue() >> ((int) constant2.longValue()));
                    }
                    if (i11 == 10) {
                        return IntConstant.fromValue(constant.shortValue() >> constant2.intValue());
                    }
                }
            } else {
                if (i11 == 2) {
                    return IntConstant.fromValue(constant.byteValue() >> constant2.charValue());
                }
                if (i11 == 3) {
                    return IntConstant.fromValue(constant.byteValue() >> constant2.byteValue());
                }
                if (i11 == 4) {
                    return IntConstant.fromValue(constant.byteValue() >> constant2.shortValue());
                }
                if (i11 == 7) {
                    return IntConstant.fromValue(constant.byteValue() >> ((int) constant2.longValue()));
                }
                if (i11 == 10) {
                    return IntConstant.fromValue(constant.byteValue() >> constant2.intValue());
                }
            }
        } else {
            if (i11 == 2) {
                return IntConstant.fromValue(constant.charValue() >> constant2.charValue());
            }
            if (i11 == 3) {
                return IntConstant.fromValue(constant.charValue() >> constant2.byteValue());
            }
            if (i11 == 4) {
                return IntConstant.fromValue(constant.charValue() >> constant2.shortValue());
            }
            if (i11 == 7) {
                return IntConstant.fromValue(constant.charValue() >> ((int) constant2.longValue()));
            }
            if (i11 == 10) {
                return IntConstant.fromValue(constant.charValue() >> constant2.intValue());
            }
        }
        return NotAConstant;
    }

    public static final Constant computeConstantOperationUNSIGNED_RIGHT_SHIFT(Constant constant, int i10, Constant constant2, int i11) {
        if (i10 != 2) {
            if (i10 != 3) {
                if (i10 != 4) {
                    if (i10 != 7) {
                        if (i10 == 10) {
                            if (i11 == 2) {
                                return IntConstant.fromValue(constant.intValue() >>> constant2.charValue());
                            }
                            if (i11 == 3) {
                                return IntConstant.fromValue(constant.intValue() >>> constant2.byteValue());
                            }
                            if (i11 == 4) {
                                return IntConstant.fromValue(constant.intValue() >>> constant2.shortValue());
                            }
                            if (i11 == 7) {
                                return IntConstant.fromValue(constant.intValue() >>> ((int) constant2.longValue()));
                            }
                            if (i11 == 10) {
                                return IntConstant.fromValue(constant.intValue() >>> constant2.intValue());
                            }
                        }
                    } else {
                        if (i11 == 2) {
                            return LongConstant.fromValue(constant.longValue() >>> constant2.charValue());
                        }
                        if (i11 == 3) {
                            return LongConstant.fromValue(constant.longValue() >>> constant2.byteValue());
                        }
                        if (i11 == 4) {
                            return LongConstant.fromValue(constant.longValue() >>> constant2.shortValue());
                        }
                        if (i11 == 7) {
                            return LongConstant.fromValue(constant.longValue() >>> ((int) constant2.longValue()));
                        }
                        if (i11 == 10) {
                            return LongConstant.fromValue(constant.longValue() >>> constant2.intValue());
                        }
                    }
                } else {
                    if (i11 == 2) {
                        return IntConstant.fromValue(constant.shortValue() >>> constant2.charValue());
                    }
                    if (i11 == 3) {
                        return IntConstant.fromValue(constant.shortValue() >>> constant2.byteValue());
                    }
                    if (i11 == 4) {
                        return IntConstant.fromValue(constant.shortValue() >>> constant2.shortValue());
                    }
                    if (i11 == 7) {
                        return IntConstant.fromValue(constant.shortValue() >>> ((int) constant2.longValue()));
                    }
                    if (i11 == 10) {
                        return IntConstant.fromValue(constant.shortValue() >>> constant2.intValue());
                    }
                }
            } else {
                if (i11 == 2) {
                    return IntConstant.fromValue(constant.byteValue() >>> constant2.charValue());
                }
                if (i11 == 3) {
                    return IntConstant.fromValue(constant.byteValue() >>> constant2.byteValue());
                }
                if (i11 == 4) {
                    return IntConstant.fromValue(constant.byteValue() >>> constant2.shortValue());
                }
                if (i11 == 7) {
                    return IntConstant.fromValue(constant.byteValue() >>> ((int) constant2.longValue()));
                }
                if (i11 == 10) {
                    return IntConstant.fromValue(constant.byteValue() >>> constant2.intValue());
                }
            }
        } else {
            if (i11 == 2) {
                return IntConstant.fromValue(constant.charValue() >>> constant2.charValue());
            }
            if (i11 == 3) {
                return IntConstant.fromValue(constant.charValue() >>> constant2.byteValue());
            }
            if (i11 == 4) {
                return IntConstant.fromValue(constant.charValue() >>> constant2.shortValue());
            }
            if (i11 == 7) {
                return IntConstant.fromValue(constant.charValue() >>> ((int) constant2.longValue()));
            }
            if (i11 == 10) {
                return IntConstant.fromValue(constant.charValue() >>> constant2.intValue());
            }
        }
        return NotAConstant;
    }

    public static final Constant computeConstantOperationXOR(Constant constant, int i10, Constant constant2, int i11) {
        if (i10 != 2) {
            if (i10 != 3) {
                if (i10 != 4) {
                    if (i10 == 5) {
                        return BooleanConstant.fromValue(constant.booleanValue() ^ constant2.booleanValue());
                    }
                    if (i10 != 7) {
                        if (i10 == 10) {
                            if (i11 == 2) {
                                return IntConstant.fromValue(constant.intValue() ^ constant2.charValue());
                            }
                            if (i11 == 3) {
                                return IntConstant.fromValue(constant.intValue() ^ constant2.byteValue());
                            }
                            if (i11 == 4) {
                                return IntConstant.fromValue(constant.intValue() ^ constant2.shortValue());
                            }
                            if (i11 == 7) {
                                return LongConstant.fromValue(constant.intValue() ^ constant2.longValue());
                            }
                            if (i11 == 10) {
                                return IntConstant.fromValue(constant.intValue() ^ constant2.intValue());
                            }
                        }
                    } else {
                        if (i11 == 2) {
                            return LongConstant.fromValue(constant.longValue() ^ constant2.charValue());
                        }
                        if (i11 == 3) {
                            return LongConstant.fromValue(constant.longValue() ^ constant2.byteValue());
                        }
                        if (i11 == 4) {
                            return LongConstant.fromValue(constant.longValue() ^ constant2.shortValue());
                        }
                        if (i11 == 7) {
                            return LongConstant.fromValue(constant.longValue() ^ constant2.longValue());
                        }
                        if (i11 == 10) {
                            return LongConstant.fromValue(constant.longValue() ^ constant2.intValue());
                        }
                    }
                } else {
                    if (i11 == 2) {
                        return IntConstant.fromValue(constant.shortValue() ^ constant2.charValue());
                    }
                    if (i11 == 3) {
                        return IntConstant.fromValue(constant.shortValue() ^ constant2.byteValue());
                    }
                    if (i11 == 4) {
                        return IntConstant.fromValue(constant.shortValue() ^ constant2.shortValue());
                    }
                    if (i11 == 7) {
                        return LongConstant.fromValue(constant.shortValue() ^ constant2.longValue());
                    }
                    if (i11 == 10) {
                        return IntConstant.fromValue(constant.shortValue() ^ constant2.intValue());
                    }
                }
            } else {
                if (i11 == 2) {
                    return IntConstant.fromValue(constant.byteValue() ^ constant2.charValue());
                }
                if (i11 == 3) {
                    return IntConstant.fromValue(constant.byteValue() ^ constant2.byteValue());
                }
                if (i11 == 4) {
                    return IntConstant.fromValue(constant.byteValue() ^ constant2.shortValue());
                }
                if (i11 == 7) {
                    return LongConstant.fromValue(constant.byteValue() ^ constant2.longValue());
                }
                if (i11 == 10) {
                    return IntConstant.fromValue(constant.byteValue() ^ constant2.intValue());
                }
            }
        } else {
            if (i11 == 2) {
                return IntConstant.fromValue(constant.charValue() ^ constant2.charValue());
            }
            if (i11 == 3) {
                return IntConstant.fromValue(constant.charValue() ^ constant2.byteValue());
            }
            if (i11 == 4) {
                return IntConstant.fromValue(constant.charValue() ^ constant2.shortValue());
            }
            if (i11 == 7) {
                return LongConstant.fromValue(constant.charValue() ^ constant2.longValue());
            }
            if (i11 == 10) {
                return IntConstant.fromValue(constant.charValue() ^ constant2.intValue());
            }
        }
        return NotAConstant;
    }

    public boolean booleanValue() {
        throw new ShouldNotImplement(Messages.bind(Messages.constant_cannotCastedInto, (Object[]) new String[]{typeName(), TypedValues.Custom.S_BOOLEAN}));
    }

    public byte byteValue() {
        throw new ShouldNotImplement(Messages.bind(Messages.constant_cannotCastedInto, (Object[]) new String[]{typeName(), "byte"}));
    }

    public final Constant castTo(int i10) {
        Constant constant = NotAConstant;
        if (this == constant) {
            return constant;
        }
        switch (i10) {
            case 0:
            case 34:
                return this;
            case 35:
                return CharConstant.fromValue((char) byteValue());
            case 36:
                return CharConstant.fromValue((char) shortValue());
            case 39:
                return CharConstant.fromValue((char) longValue());
            case 40:
                return CharConstant.fromValue((char) doubleValue());
            case 41:
                return CharConstant.fromValue((char) floatValue());
            case 42:
                return CharConstant.fromValue((char) intValue());
            case 50:
                return ByteConstant.fromValue((byte) charValue());
            case 51:
                return this;
            case 52:
                return ByteConstant.fromValue((byte) shortValue());
            case 55:
                return ByteConstant.fromValue((byte) longValue());
            case 56:
                return ByteConstant.fromValue((byte) doubleValue());
            case 57:
                return ByteConstant.fromValue((byte) floatValue());
            case 58:
                return ByteConstant.fromValue((byte) intValue());
            case 66:
                return ShortConstant.fromValue((short) charValue());
            case 67:
                return ShortConstant.fromValue(byteValue());
            case 68:
                return this;
            case 71:
                return ShortConstant.fromValue((short) longValue());
            case 72:
                return ShortConstant.fromValue((short) doubleValue());
            case 73:
                return ShortConstant.fromValue((short) floatValue());
            case 74:
                return ShortConstant.fromValue((short) intValue());
            case 85:
                return this;
            case 114:
                return LongConstant.fromValue(charValue());
            case 115:
                return LongConstant.fromValue(byteValue());
            case 116:
                return LongConstant.fromValue(shortValue());
            case 119:
                return this;
            case 120:
                return LongConstant.fromValue((long) doubleValue());
            case 121:
                return LongConstant.fromValue(floatValue());
            case 122:
                return LongConstant.fromValue(intValue());
            case 130:
                return DoubleConstant.fromValue(charValue());
            case 131:
                return DoubleConstant.fromValue(byteValue());
            case 132:
                return DoubleConstant.fromValue(shortValue());
            case 135:
                return DoubleConstant.fromValue(longValue());
            case 136:
                return this;
            case 137:
                return DoubleConstant.fromValue(floatValue());
            case 138:
                return DoubleConstant.fromValue(intValue());
            case 146:
                return FloatConstant.fromValue(charValue());
            case 147:
                return FloatConstant.fromValue(byteValue());
            case 148:
                return FloatConstant.fromValue(shortValue());
            case 151:
                return FloatConstant.fromValue((float) longValue());
            case 152:
                return FloatConstant.fromValue((float) doubleValue());
            case 153:
                return this;
            case 154:
                return FloatConstant.fromValue(intValue());
            case 162:
                return IntConstant.fromValue(charValue());
            case 163:
                return IntConstant.fromValue(byteValue());
            case 164:
                return IntConstant.fromValue(shortValue());
            case 167:
                return IntConstant.fromValue((int) longValue());
            case 168:
                return IntConstant.fromValue((int) doubleValue());
            case 169:
                return IntConstant.fromValue((int) floatValue());
            case 170:
            case 187:
                return this;
            default:
                return constant;
        }
    }

    public char charValue() {
        throw new ShouldNotImplement(Messages.bind(Messages.constant_cannotCastedInto, (Object[]) new String[]{typeName(), "char"}));
    }

    public double doubleValue() {
        throw new ShouldNotImplement(Messages.bind(Messages.constant_cannotCastedInto, (Object[]) new String[]{typeName(), "double"}));
    }

    public float floatValue() {
        throw new ShouldNotImplement(Messages.bind(Messages.constant_cannotCastedInto, (Object[]) new String[]{typeName(), TypedValues.Custom.S_FLOAT}));
    }

    public boolean hasSameValue(Constant constant) {
        if (this == constant) {
            return true;
        }
        int typeID = typeID();
        if (typeID != constant.typeID()) {
            return false;
        }
        switch (typeID) {
            case 2:
                return charValue() == constant.charValue();
            case 3:
                return byteValue() == constant.byteValue();
            case 4:
                return shortValue() == constant.shortValue();
            case 5:
                return booleanValue() == constant.booleanValue();
            case 6:
            default:
                return false;
            case 7:
                return longValue() == constant.longValue();
            case 8:
                return doubleValue() == constant.doubleValue();
            case 9:
                return floatValue() == constant.floatValue();
            case 10:
                return intValue() == constant.intValue();
            case 11:
                String stringValue = stringValue();
                return stringValue == null ? constant.stringValue() == null : stringValue.equals(constant.stringValue());
        }
    }

    public int intValue() {
        throw new ShouldNotImplement(Messages.bind(Messages.constant_cannotCastedInto, (Object[]) new String[]{typeName(), "int"}));
    }

    public long longValue() {
        throw new ShouldNotImplement(Messages.bind(Messages.constant_cannotCastedInto, (Object[]) new String[]{typeName(), "long"}));
    }

    public short shortValue() {
        throw new ShouldNotImplement(Messages.bind(Messages.constant_cannotConvertedTo, (Object[]) new String[]{typeName(), "short"}));
    }

    public String stringValue() {
        throw new ShouldNotImplement(Messages.bind(Messages.constant_cannotConvertedTo, (Object[]) new String[]{typeName(), SerializableShaderEntry.f81157k}));
    }

    public String toString() {
        return this == NotAConstant ? "(Constant) NotAConstant" : super.toString();
    }

    public abstract int typeID();

    public String typeName() {
        switch (typeID()) {
            case 2:
                return "char";
            case 3:
                return "byte";
            case 4:
                return "short";
            case 5:
                return TypedValues.Custom.S_BOOLEAN;
            case 6:
            default:
                return "unknown";
            case 7:
                return "long";
            case 8:
                return "double";
            case 9:
                return TypedValues.Custom.S_FLOAT;
            case 10:
                return "int";
            case 11:
                return "java.lang.String";
        }
    }

    public static final Constant computeConstantOperation(Constant constant, int i10, int i11, Constant constant2, int i12) {
        switch (i11) {
            case 0:
                return computeConstantOperationAND_AND(constant, i10, constant2, i12);
            case 1:
                return computeConstantOperationOR_OR(constant, i10, constant2, i12);
            case 2:
                return computeConstantOperationAND(constant, i10, constant2, i12);
            case 3:
                return computeConstantOperationOR(constant, i10, constant2, i12);
            case 4:
                return computeConstantOperationLESS(constant, i10, constant2, i12);
            case 5:
                return computeConstantOperationLESS_EQUAL(constant, i10, constant2, i12);
            case 6:
                return computeConstantOperationGREATER(constant, i10, constant2, i12);
            case 7:
                return computeConstantOperationGREATER_EQUAL(constant, i10, constant2, i12);
            case 8:
                return computeConstantOperationXOR(constant, i10, constant2, i12);
            case 9:
                return computeConstantOperationDIVIDE(constant, i10, constant2, i12);
            case 10:
                return computeConstantOperationLEFT_SHIFT(constant, i10, constant2, i12);
            case 11:
            case 12:
            case 18:
            default:
                return NotAConstant;
            case 13:
                return computeConstantOperationMINUS(constant, i10, constant2, i12);
            case 14:
                return computeConstantOperationPLUS(constant, i10, constant2, i12);
            case 15:
                return computeConstantOperationMULTIPLY(constant, i10, constant2, i12);
            case 16:
                return computeConstantOperationREMAINDER(constant, i10, constant2, i12);
            case 17:
                return computeConstantOperationRIGHT_SHIFT(constant, i10, constant2, i12);
            case 19:
                return computeConstantOperationUNSIGNED_RIGHT_SHIFT(constant, i10, constant2, i12);
        }
    }
}

package org.openjdk.javax.lang.model.util;

import org.openjdk.javax.annotation.processing.SupportedSourceVersion;
import org.openjdk.javax.lang.model.SourceVersion;
import org.openjdk.javax.lang.model.element.ElementKind;
import org.openjdk.javax.lang.model.element.ExecutableElement;
import org.openjdk.javax.lang.model.element.PackageElement;
import org.openjdk.javax.lang.model.element.TypeElement;
import org.openjdk.javax.lang.model.element.TypeParameterElement;
import org.openjdk.javax.lang.model.element.VariableElement;

@SupportedSourceVersion(SourceVersion.RELEASE_6)
public class ElementKindVisitor6<R, P> extends SimpleElementVisitor6<R, P> {
    static final boolean $assertionsDisabled = false;

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$javax$lang$model$element$ElementKind;

        static {
            int[] iArr = new int[ElementKind.values().length];
            $SwitchMap$javax$lang$model$element$ElementKind = iArr;
            try {
                iArr[ElementKind.ANNOTATION_TYPE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$javax$lang$model$element$ElementKind[ElementKind.CLASS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$javax$lang$model$element$ElementKind[ElementKind.ENUM.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$javax$lang$model$element$ElementKind[ElementKind.INTERFACE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$javax$lang$model$element$ElementKind[ElementKind.ENUM_CONSTANT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$javax$lang$model$element$ElementKind[ElementKind.EXCEPTION_PARAMETER.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$javax$lang$model$element$ElementKind[ElementKind.FIELD.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$javax$lang$model$element$ElementKind[ElementKind.LOCAL_VARIABLE.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$javax$lang$model$element$ElementKind[ElementKind.PARAMETER.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$javax$lang$model$element$ElementKind[ElementKind.RESOURCE_VARIABLE.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$javax$lang$model$element$ElementKind[ElementKind.CONSTRUCTOR.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$javax$lang$model$element$ElementKind[ElementKind.INSTANCE_INIT.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$javax$lang$model$element$ElementKind[ElementKind.METHOD.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$javax$lang$model$element$ElementKind[ElementKind.STATIC_INIT.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
        }
    }

    @Deprecated
    public ElementKindVisitor6() {
        super(null);
    }

    @Override
    public R visitExecutable(ExecutableElement executableElement, P p10) {
        ElementKind kind = executableElement.getKind();
        switch (AnonymousClass1.$SwitchMap$javax$lang$model$element$ElementKind[kind.ordinal()]) {
            case 11:
                return visitExecutableAsConstructor(executableElement, p10);
            case 12:
                return visitExecutableAsInstanceInit(executableElement, p10);
            case 13:
                return visitExecutableAsMethod(executableElement, p10);
            case 14:
                return visitExecutableAsStaticInit(executableElement, p10);
            default:
                throw new AssertionError((Object) ("Bad kind " + ((Object) kind) + " for ExecutableElement" + ((Object) executableElement)));
        }
    }

    public R visitExecutableAsConstructor(ExecutableElement executableElement, P p10) {
        return defaultAction(executableElement, p10);
    }

    public R visitExecutableAsInstanceInit(ExecutableElement executableElement, P p10) {
        return defaultAction(executableElement, p10);
    }

    public R visitExecutableAsMethod(ExecutableElement executableElement, P p10) {
        return defaultAction(executableElement, p10);
    }

    public R visitExecutableAsStaticInit(ExecutableElement executableElement, P p10) {
        return defaultAction(executableElement, p10);
    }

    @Override
    public R visitPackage(PackageElement packageElement, P p10) {
        return defaultAction(packageElement, p10);
    }

    @Override
    public R visitType(TypeElement typeElement, P p10) {
        ElementKind kind = typeElement.getKind();
        int i10 = AnonymousClass1.$SwitchMap$javax$lang$model$element$ElementKind[kind.ordinal()];
        if (i10 == 1) {
            return visitTypeAsAnnotationType(typeElement, p10);
        }
        if (i10 == 2) {
            return visitTypeAsClass(typeElement, p10);
        }
        if (i10 == 3) {
            return visitTypeAsEnum(typeElement, p10);
        }
        if (i10 == 4) {
            return visitTypeAsInterface(typeElement, p10);
        }
        throw new AssertionError((Object) ("Bad kind " + ((Object) kind) + " for TypeElement" + ((Object) typeElement)));
    }

    public R visitTypeAsAnnotationType(TypeElement typeElement, P p10) {
        return defaultAction(typeElement, p10);
    }

    public R visitTypeAsClass(TypeElement typeElement, P p10) {
        return defaultAction(typeElement, p10);
    }

    public R visitTypeAsEnum(TypeElement typeElement, P p10) {
        return defaultAction(typeElement, p10);
    }

    public R visitTypeAsInterface(TypeElement typeElement, P p10) {
        return defaultAction(typeElement, p10);
    }

    @Override
    public R visitTypeParameter(TypeParameterElement typeParameterElement, P p10) {
        return defaultAction(typeParameterElement, p10);
    }

    @Override
    public R visitVariable(VariableElement variableElement, P p10) {
        ElementKind kind = variableElement.getKind();
        switch (AnonymousClass1.$SwitchMap$javax$lang$model$element$ElementKind[kind.ordinal()]) {
            case 5:
                return visitVariableAsEnumConstant(variableElement, p10);
            case 6:
                return visitVariableAsExceptionParameter(variableElement, p10);
            case 7:
                return visitVariableAsField(variableElement, p10);
            case 8:
                return visitVariableAsLocalVariable(variableElement, p10);
            case 9:
                return visitVariableAsParameter(variableElement, p10);
            case 10:
                return visitVariableAsResourceVariable(variableElement, p10);
            default:
                throw new AssertionError((Object) ("Bad kind " + ((Object) kind) + " for VariableElement" + ((Object) variableElement)));
        }
    }

    public R visitVariableAsEnumConstant(VariableElement variableElement, P p10) {
        return defaultAction(variableElement, p10);
    }

    public R visitVariableAsExceptionParameter(VariableElement variableElement, P p10) {
        return defaultAction(variableElement, p10);
    }

    public R visitVariableAsField(VariableElement variableElement, P p10) {
        return defaultAction(variableElement, p10);
    }

    public R visitVariableAsLocalVariable(VariableElement variableElement, P p10) {
        return defaultAction(variableElement, p10);
    }

    public R visitVariableAsParameter(VariableElement variableElement, P p10) {
        return defaultAction(variableElement, p10);
    }

    public R visitVariableAsResourceVariable(VariableElement variableElement, P p10) {
        return visitUnknown(variableElement, p10);
    }

    @Deprecated
    public ElementKindVisitor6(R r10) {
        super(r10);
    }
}

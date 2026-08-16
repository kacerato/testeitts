package org.openjdk.tools.sjavac.comp;

import java.util.List;
import java.util.function.Function;
import java.util.function.IntFunction;
import java.util.stream.Collectors;
import org.eclipse.jdt.internal.core.JavadocConstants;
import org.openjdk.javax.lang.model.element.Element;
import org.openjdk.javax.lang.model.element.ExecutableElement;
import org.openjdk.javax.lang.model.element.Modifier;
import org.openjdk.javax.lang.model.element.TypeElement;
import org.openjdk.javax.lang.model.element.TypeParameterElement;
import org.openjdk.javax.lang.model.element.VariableElement;
import org.openjdk.javax.lang.model.type.TypeMirror;
import org.openjdk.javax.lang.model.util.ElementScanner9;
import org.openjdk.tools.javac.code.Symbol;
import org.openjdk.tools.sjavac.pubapi.PubApi;
import org.openjdk.tools.sjavac.pubapi.PubApiTypeParam;
import org.openjdk.tools.sjavac.pubapi.PubMethod;
import org.openjdk.tools.sjavac.pubapi.PubType;
import org.openjdk.tools.sjavac.pubapi.PubVar;
import org.openjdk.tools.sjavac.pubapi.TypeDesc;

public class PubapiVisitor extends ElementScanner9<Void, Void> {
    private PubApi collectedApi = new PubApi();

    public static String encodeChar(int i10) {
        return String.format("\\u%04x", Integer.valueOf(i10));
    }

    private List<TypeMirror> getParamTypes(ExecutableElement executableElement) {
        return (List) executableElement.getParameters().stream().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((VariableElement) obj).asType();
            }
        }).collect(Collectors.toList());
    }

    private List<TypeDesc> getTypeDescs(List<? extends TypeMirror> list) {
        return (List) list.stream().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                return TypeDesc.fromType((TypeMirror) obj);
            }
        }).collect(Collectors.toList());
    }

    private List<PubApiTypeParam> getTypeParameters(List<? extends TypeParameterElement> list) {
        return (List) list.stream().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                PubApiTypeParam lambda$getTypeParameters$0;
                lambda$getTypeParameters$0 = PubapiVisitor.this.lambda$getTypeParameters$0((TypeParameterElement) obj);
                return lambda$getTypeParameters$0;
            }
        }).collect(Collectors.toList());
    }

    private boolean isAnonymous(TypeElement typeElement) {
        return typeElement.getQualifiedName().length() == 0;
    }

    private boolean isNonPrivate(Element element) {
        return !element.getModifiers().contains(Modifier.PRIVATE);
    }

    public PubApiTypeParam lambda$getTypeParameters$0(TypeParameterElement typeParameterElement) {
        return new PubApiTypeParam(typeParameterElement.getSimpleName().toString(), getTypeDescs(typeParameterElement.getBounds()));
    }

    public PubApi getCollectedPubApi() {
        return this.collectedApi;
    }

    @Override
    public Void visitExecutable(ExecutableElement executableElement, Void r92) {
        if (!isNonPrivate(executableElement)) {
            return null;
        }
        PubMethod pubMethod = new PubMethod(executableElement.getModifiers(), getTypeParameters(executableElement.getTypeParameters()), TypeDesc.fromType(executableElement.getReturnType()), executableElement.getSimpleName().toString(), getTypeDescs(getParamTypes(executableElement)), getTypeDescs(executableElement.getThrownTypes()));
        this.collectedApi.methods.put(pubMethod.asSignatureString(), pubMethod);
        return null;
    }

    @Override
    public Void visitType(TypeElement typeElement, Void r52) {
        if (!isNonPrivate(typeElement)) {
            return null;
        }
        PubApi pubApi = this.collectedApi;
        this.collectedApi = new PubApi();
        super.visitType(typeElement, (TypeElement) r52);
        if (!isAnonymous(typeElement)) {
            PubType pubType = new PubType(typeElement.getModifiers(), ((Symbol.ClassSymbol) typeElement).flatname.toString(), this.collectedApi);
            pubApi.types.put(pubType.fqName, pubType);
        }
        this.collectedApi = pubApi;
        return null;
    }

    @Override
    public Void visitVariable(VariableElement variableElement, Void r62) {
        String str;
        if (isNonPrivate(variableElement)) {
            Object constantValue = variableElement.getConstantValue();
            if (constantValue == null) {
                str = null;
            } else if (variableElement.asType().toString().equals("char")) {
                str = "'" + encodeChar(constantValue.toString().charAt(0)) + "'";
            } else {
                str = (String) constantValue.toString().chars().mapToObj(new IntFunction() {
                    @Override
                    public final Object apply(int i10) {
                        String encodeChar;
                        encodeChar = PubapiVisitor.encodeChar(i10);
                        return encodeChar;
                    }
                }).collect(Collectors.joining("", JavadocConstants.ANCHOR_PREFIX_END, JavadocConstants.ANCHOR_PREFIX_END));
            }
            PubVar pubVar = new PubVar(variableElement.getModifiers(), TypeDesc.fromType(variableElement.asType()), variableElement.toString(), str);
            this.collectedApi.variables.put(pubVar.identifier, pubVar);
        }
        return null;
    }
}

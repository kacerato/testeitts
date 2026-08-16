package com.github.javaparser.ast.validator.postprocessors;

import com.github.javaparser.ParseResult;
import com.github.javaparser.ParserConfiguration;
import com.github.javaparser.Processor;
import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.expr.ClassExpr;
import com.github.javaparser.ast.type.ClassOrInterfaceType;
import com.github.javaparser.ast.type.VarType;
import com.github.javaparser.ast.validator.postprocessors.Java10PostProcessor;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.function.Consumer;
import java.util.function.Predicate;

public class Java10PostProcessor extends PostProcessors {
    private static List<Class> FORBIDEN_PARENT_CONTEXT_TO_DETECT_POTENTIAL_VAR_TYPE;
    protected final Processor varNodeCreator;

    public class AnonymousClass1 extends Processor {
        public AnonymousClass1() {
        }

        public static boolean lambda$matchForbiddenContext$2(final ClassOrInterfaceType cit, Class cl2) {
            return cl2.isInstance(cit.getParentNode().get());
        }

        public void lambda$null$0(ClassOrInterfaceType n10) {
            if (!"var".equals(n10.getNameAsString()) || matchForbiddenContext(n10)) {
                return;
            }
            n10.replace(new VarType(n10.getTokenRange().orElse(null)));
        }

        public void lambda$postProcess$1(Node node) {
            node.findAll(ClassOrInterfaceType.class).forEach(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    Java10PostProcessor.AnonymousClass1.this.lambda$null$0((ClassOrInterfaceType) obj);
                }
            });
        }

        private boolean matchForbiddenContext(final ClassOrInterfaceType cit) {
            return cit.getParentNode().isPresent() && Java10PostProcessor.FORBIDEN_PARENT_CONTEXT_TO_DETECT_POTENTIAL_VAR_TYPE.stream().anyMatch(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    boolean lambda$matchForbiddenContext$2;
                    lambda$matchForbiddenContext$2 = Java10PostProcessor.AnonymousClass1.lambda$matchForbiddenContext$2(ClassOrInterfaceType.this, (Class) obj);
                    return lambda$matchForbiddenContext$2;
                }
            });
        }

        @Override
        public void postProcess(ParseResult<? extends Node> result, ParserConfiguration configuration) {
            result.getResult().ifPresent(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    Java10PostProcessor.AnonymousClass1.this.lambda$postProcess$1((Node) obj);
                }
            });
        }
    }

    static {
        ArrayList arrayList = new ArrayList();
        FORBIDEN_PARENT_CONTEXT_TO_DETECT_POTENTIAL_VAR_TYPE = arrayList;
        arrayList.addAll(Arrays.asList(ClassExpr.class));
    }

    public Java10PostProcessor() {
        super(new Processor[0]);
        AnonymousClass1 anonymousClass1 = new AnonymousClass1();
        this.varNodeCreator = anonymousClass1;
        add(anonymousClass1);
    }
}

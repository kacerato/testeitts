package com.github.javaparser.ast.validator;

import com.github.javaparser.ParseResult;
import com.github.javaparser.ParserConfiguration;
import com.github.javaparser.Problem;
import com.github.javaparser.Processor;
import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.validator.TypedValidator;
import java.util.function.BiConsumer;
import java.util.function.Consumer;

public interface TypedValidator<N extends Node> extends BiConsumer<N, ProblemReporter> {

    public class AnonymousClass1 extends Processor {
        public AnonymousClass1() {
        }

        public static void lambda$null$0(final ParseResult result, Problem problem) {
            result.getProblems().add(problem);
        }

        public void lambda$postProcess$1(final ParseResult result, Node node) {
            TypedValidator.this.accept((TypedValidator) node, new ProblemReporter(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    TypedValidator.AnonymousClass1.lambda$null$0(ParseResult.this, (Problem) obj);
                }
            }));
        }

        @Override
        public void postProcess(final ParseResult<? extends Node> result, ParserConfiguration configuration) {
            result.getResult().ifPresent(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    TypedValidator.AnonymousClass1.this.lambda$postProcess$1(result, (Node) obj);
                }
            });
        }
    }

    @Override
    void accept(N node, ProblemReporter problemReporter);

    default Processor processor() {
        return new AnonymousClass1();
    }
}

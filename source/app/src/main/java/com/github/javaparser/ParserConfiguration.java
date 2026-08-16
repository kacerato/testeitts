package com.github.javaparser;

import com.github.javaparser.ParserConfiguration;
import com.github.javaparser.UnicodeEscapeProcessingProvider;
import com.github.javaparser.ast.CompilationUnit;
import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.comments.CommentsCollection;
import com.github.javaparser.ast.validator.ProblemReporter;
import com.github.javaparser.ast.validator.Validator;
import com.github.javaparser.ast.validator.language_level_validations.Java10PreviewValidator;
import com.github.javaparser.ast.validator.language_level_validations.Java10Validator;
import com.github.javaparser.ast.validator.language_level_validations.Java11PreviewValidator;
import com.github.javaparser.ast.validator.language_level_validations.Java11Validator;
import com.github.javaparser.ast.validator.language_level_validations.Java12PreviewValidator;
import com.github.javaparser.ast.validator.language_level_validations.Java12Validator;
import com.github.javaparser.ast.validator.language_level_validations.Java13PreviewValidator;
import com.github.javaparser.ast.validator.language_level_validations.Java13Validator;
import com.github.javaparser.ast.validator.language_level_validations.Java14PreviewValidator;
import com.github.javaparser.ast.validator.language_level_validations.Java14Validator;
import com.github.javaparser.ast.validator.language_level_validations.Java15PreviewValidator;
import com.github.javaparser.ast.validator.language_level_validations.Java15Validator;
import com.github.javaparser.ast.validator.language_level_validations.Java16PreviewValidator;
import com.github.javaparser.ast.validator.language_level_validations.Java16Validator;
import com.github.javaparser.ast.validator.language_level_validations.Java17PreviewValidator;
import com.github.javaparser.ast.validator.language_level_validations.Java17Validator;
import com.github.javaparser.ast.validator.language_level_validations.Java18Validator;
import com.github.javaparser.ast.validator.language_level_validations.Java19Validator;
import com.github.javaparser.ast.validator.language_level_validations.Java1_0Validator;
import com.github.javaparser.ast.validator.language_level_validations.Java1_1Validator;
import com.github.javaparser.ast.validator.language_level_validations.Java1_2Validator;
import com.github.javaparser.ast.validator.language_level_validations.Java1_3Validator;
import com.github.javaparser.ast.validator.language_level_validations.Java1_4Validator;
import com.github.javaparser.ast.validator.language_level_validations.Java20Validator;
import com.github.javaparser.ast.validator.language_level_validations.Java21Validator;
import com.github.javaparser.ast.validator.language_level_validations.Java5Validator;
import com.github.javaparser.ast.validator.language_level_validations.Java6Validator;
import com.github.javaparser.ast.validator.language_level_validations.Java7Validator;
import com.github.javaparser.ast.validator.language_level_validations.Java8Validator;
import com.github.javaparser.ast.validator.language_level_validations.Java9Validator;
import com.github.javaparser.ast.validator.postprocessors.Java10PostProcessor;
import com.github.javaparser.ast.validator.postprocessors.Java11PostProcessor;
import com.github.javaparser.ast.validator.postprocessors.Java12PostProcessor;
import com.github.javaparser.ast.validator.postprocessors.Java13PostProcessor;
import com.github.javaparser.ast.validator.postprocessors.Java14PostProcessor;
import com.github.javaparser.ast.validator.postprocessors.Java15PostProcessor;
import com.github.javaparser.ast.validator.postprocessors.Java16PostProcessor;
import com.github.javaparser.ast.validator.postprocessors.Java17PostProcessor;
import com.github.javaparser.ast.validator.postprocessors.Java18PostProcessor;
import com.github.javaparser.ast.validator.postprocessors.Java19PostProcessor;
import com.github.javaparser.ast.validator.postprocessors.Java20PostProcessor;
import com.github.javaparser.ast.validator.postprocessors.Java21PostProcessor;
import com.github.javaparser.ast.validator.postprocessors.PostProcessors;
import com.github.javaparser.printer.lexicalpreservation.DefaultLexicalPreservingPrinter;
import com.github.javaparser.printer.lexicalpreservation.LexicalPreservingPrinter;
import com.github.javaparser.resolution.SymbolResolver;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Optional;
import java.util.function.Consumer;
import java.util.function.Predicate;
import java.util.function.Supplier;

public class ParserConfiguration {
    private final List<Supplier<Processor>> processors;
    private boolean detectOriginalLineSeparator = true;
    private boolean storeTokens = true;
    private boolean attributeComments = true;
    private boolean doNotAssignCommentsPrecedingEmptyLines = true;
    private boolean ignoreAnnotationsWhenAttributingComments = false;
    private boolean lexicalPreservationEnabled = false;
    private boolean preprocessUnicodeEscapes = false;
    private SymbolResolver symbolResolver = null;
    private int tabSize = 1;
    private LanguageLevel languageLevel = LanguageLevel.POPULAR;
    private Charset characterEncoding = Providers.UTF8;

    public class AnonymousClass1 extends Processor {
        public AnonymousClass1() {
        }

        public static void lambda$null$0(final ParserConfiguration configuration, final Node resultNode, CommentsCollection comments) {
            new CommentsInserter(configuration).insertComments(resultNode, comments.copy().getComments());
        }

        public static void lambda$postProcess$1(final ParseResult result, final ParserConfiguration configuration, final Node resultNode) {
            result.getCommentsCollection().ifPresent(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    ParserConfiguration.AnonymousClass1.lambda$null$0(ParserConfiguration.this, resultNode, (CommentsCollection) obj);
                }
            });
        }

        @Override
        public void postProcess(final ParseResult<? extends Node> result, final ParserConfiguration configuration) {
            if (configuration.isAttributeComments()) {
                result.ifSuccessful(new Consumer() {
                    @Override
                    public final void accept(Object obj) {
                        ParserConfiguration.AnonymousClass1.lambda$postProcess$1(ParseResult.this, configuration, (Node) obj);
                    }
                });
            }
        }
    }

    public class AnonymousClass2 extends Processor {
        public AnonymousClass2() {
        }

        public static void lambda$postProcess$0(final ParseResult result, Problem newProblem) {
            result.getProblems().add(newProblem);
        }

        @Override
        public void postProcess(final ParseResult<? extends Node> result, ParserConfiguration configuration) {
            LanguageLevel languageLevel = ParserConfiguration.this.getLanguageLevel();
            if (languageLevel != null) {
                PostProcessors postProcessors = languageLevel.postProcessor;
                if (postProcessors != null) {
                    postProcessors.postProcess(result, configuration);
                }
                Validator validator = languageLevel.validator;
                if (validator != null) {
                    validator.accept(result.getResult().get(), new ProblemReporter(new Consumer() {
                        @Override
                        public final void accept(Object obj) {
                            ParserConfiguration.AnonymousClass2.lambda$postProcess$0(ParseResult.this, (Problem) obj);
                        }
                    }));
                }
            }
        }
    }

    public class AnonymousClass3 extends Processor {
        public AnonymousClass3() {
        }

        public static void lambda$null$0(final SymbolResolver symbolResolver, Node resultNode) {
            if (resultNode instanceof CompilationUnit) {
                resultNode.setData(Node.SYMBOL_RESOLVER_KEY, symbolResolver);
            }
        }

        public static void lambda$postProcess$1(final ParseResult result, final SymbolResolver symbolResolver) {
            result.ifSuccessful(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    ParserConfiguration.AnonymousClass3.lambda$null$0(SymbolResolver.this, (Node) obj);
                }
            });
        }

        @Override
        public void postProcess(final ParseResult<? extends Node> result, ParserConfiguration configuration) {
            configuration.getSymbolResolver().ifPresent(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    ParserConfiguration.AnonymousClass3.lambda$postProcess$1(ParseResult.this, (SymbolResolver) obj);
                }
            });
        }
    }

    public class AnonymousClass4 extends Processor {
        public AnonymousClass4() {
        }

        public static void lambda$postProcess$0(Node resultNode) {
            LexicalPreservingPrinter.setup(resultNode);
            resultNode.setData(Node.PRINTER_KEY, new DefaultLexicalPreservingPrinter());
        }

        @Override
        public void postProcess(ParseResult<? extends Node> result, ParserConfiguration configuration) {
            if (configuration.isLexicalPreservationEnabled()) {
                result.ifSuccessful(new Consumer() {
                    @Override
                    public final void accept(Object obj) {
                        ParserConfiguration.AnonymousClass4.lambda$postProcess$0((Node) obj);
                    }
                });
            }
        }
    }

    public enum LanguageLevel {
        JAVA_1_0(new Java1_0Validator(), null),
        JAVA_1_1(new Java1_1Validator(), null),
        JAVA_1_2(new Java1_2Validator(), null),
        JAVA_1_3(new Java1_3Validator(), null),
        JAVA_1_4(new Java1_4Validator(), null),
        JAVA_5(new Java5Validator(), null),
        JAVA_6(new Java6Validator(), null),
        JAVA_7(new Java7Validator(), null),
        JAVA_8(new Java8Validator(), null),
        JAVA_9(new Java9Validator(), null),
        JAVA_10(new Java10Validator(), new Java10PostProcessor()),
        JAVA_10_PREVIEW(new Java10PreviewValidator(), new Java10PostProcessor()),
        JAVA_11(new Java11Validator(), new Java11PostProcessor()),
        JAVA_11_PREVIEW(new Java11PreviewValidator(), new Java11PostProcessor()),
        JAVA_12(new Java12Validator(), new Java12PostProcessor()),
        JAVA_12_PREVIEW(new Java12PreviewValidator(), new Java12PostProcessor()),
        JAVA_13(new Java13Validator(), new Java13PostProcessor()),
        JAVA_13_PREVIEW(new Java13PreviewValidator(), new Java13PostProcessor()),
        JAVA_14(new Java14Validator(), new Java14PostProcessor()),
        JAVA_14_PREVIEW(new Java14PreviewValidator(), new Java14PostProcessor()),
        JAVA_15(new Java15Validator(), new Java15PostProcessor()),
        JAVA_15_PREVIEW(new Java15PreviewValidator(), new Java15PostProcessor()),
        JAVA_16(new Java16Validator(), new Java16PostProcessor()),
        JAVA_16_PREVIEW(new Java16PreviewValidator(), new Java16PostProcessor()),
        JAVA_17(new Java17Validator(), new Java17PostProcessor()),
        JAVA_17_PREVIEW(new Java17PreviewValidator(), new Java17PostProcessor()),
        JAVA_18(new Java18Validator(), new Java18PostProcessor()),
        JAVA_19(new Java19Validator(), new Java19PostProcessor()),
        JAVA_20(new Java20Validator(), new Java20PostProcessor()),
        JAVA_21(new Java21Validator(), new Java21PostProcessor());

        public static LanguageLevel BLEEDING_EDGE;
        public static LanguageLevel CURRENT;
        public static LanguageLevel POPULAR;
        public static LanguageLevel RAW;
        private static final LanguageLevel[] yieldSupport;
        final PostProcessors postProcessor;
        final Validator validator;

        static {
            LanguageLevel languageLevel = JAVA_11;
            LanguageLevel languageLevel2 = JAVA_13;
            LanguageLevel languageLevel3 = JAVA_13_PREVIEW;
            LanguageLevel languageLevel4 = JAVA_14;
            LanguageLevel languageLevel5 = JAVA_14_PREVIEW;
            LanguageLevel languageLevel6 = JAVA_15;
            LanguageLevel languageLevel7 = JAVA_15_PREVIEW;
            LanguageLevel languageLevel8 = JAVA_16;
            LanguageLevel languageLevel9 = JAVA_16_PREVIEW;
            LanguageLevel languageLevel10 = JAVA_17;
            LanguageLevel languageLevel11 = JAVA_17_PREVIEW;
            LanguageLevel languageLevel12 = JAVA_18;
            LanguageLevel languageLevel13 = JAVA_19;
            LanguageLevel languageLevel14 = JAVA_20;
            LanguageLevel languageLevel15 = JAVA_21;
            RAW = null;
            POPULAR = languageLevel;
            CURRENT = languageLevel12;
            BLEEDING_EDGE = languageLevel15;
            yieldSupport = new LanguageLevel[]{languageLevel2, languageLevel3, languageLevel4, languageLevel5, languageLevel6, languageLevel7, languageLevel8, languageLevel9, languageLevel10, languageLevel11, languageLevel12, languageLevel13, languageLevel14, languageLevel15};
        }

        LanguageLevel(Validator validator, PostProcessors postProcessor) {
            this.validator = validator;
            this.postProcessor = postProcessor;
        }

        public boolean lambda$isYieldSupported$0(LanguageLevel level) {
            return level == this;
        }

        public boolean isYieldSupported() {
            return Arrays.stream(yieldSupport).anyMatch(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    boolean lambda$isYieldSupported$0;
                    lambda$isYieldSupported$0 = ParserConfiguration.LanguageLevel.this.lambda$isYieldSupported$0((ParserConfiguration.LanguageLevel) obj);
                    return lambda$isYieldSupported$0;
                }
            });
        }
    }

    public class LineEndingProcessor extends Processor {
        private LineEndingProcessingProvider _lineEndingProcessingProvider;

        private LineEndingProcessor() {
        }

        public void lambda$postProcess$0(Node rootNode) {
            rootNode.setData(Node.LINE_SEPARATOR_KEY, this._lineEndingProcessingProvider.getDetectedLineEnding());
        }

        @Override
        public void postProcess(ParseResult<? extends Node> result, ParserConfiguration configuration) {
            if (ParserConfiguration.this.isDetectOriginalLineSeparator()) {
                result.getResult().ifPresent(new Consumer() {
                    @Override
                    public final void accept(Object obj) {
                        ParserConfiguration.LineEndingProcessor.this.lambda$postProcess$0((Node) obj);
                    }
                });
            }
        }

        @Override
        public Provider preProcess(Provider innerProvider) {
            if (!ParserConfiguration.this.isDetectOriginalLineSeparator()) {
                return innerProvider;
            }
            LineEndingProcessingProvider lineEndingProcessingProvider = new LineEndingProcessingProvider(innerProvider);
            this._lineEndingProcessingProvider = lineEndingProcessingProvider;
            return lineEndingProcessingProvider;
        }

        public LineEndingProcessor(ParserConfiguration parserConfiguration, AnonymousClass1 anonymousClass1) {
            this();
        }
    }

    public class UnicodeEscapeProcessor extends Processor {
        private UnicodeEscapeProcessingProvider _unicodeDecoder;

        private UnicodeEscapeProcessor() {
        }

        public static void lambda$null$0(final Node node, final UnicodeEscapeProcessingProvider.PositionMapping mapping, Range range) {
            node.setRange(mapping.transform(range));
        }

        public static void lambda$null$1(final UnicodeEscapeProcessingProvider.PositionMapping mapping, final Node node) {
            node.getRange().ifPresent(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    ParserConfiguration.UnicodeEscapeProcessor.lambda$null$0(Node.this, mapping, (Range) obj);
                }
            });
        }

        public void lambda$postProcess$2(Node root) {
            final UnicodeEscapeProcessingProvider.PositionMapping positionMapping = this._unicodeDecoder.getPositionMapping();
            if (positionMapping.isEmpty()) {
                return;
            }
            root.walk(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    ParserConfiguration.UnicodeEscapeProcessor.lambda$null$1(UnicodeEscapeProcessingProvider.PositionMapping.this, (Node) obj);
                }
            });
        }

        @Override
        public void postProcess(ParseResult<? extends Node> result, ParserConfiguration configuration) {
            if (ParserConfiguration.this.isPreprocessUnicodeEscapes()) {
                result.getResult().ifPresent(new Consumer() {
                    @Override
                    public final void accept(Object obj) {
                        ParserConfiguration.UnicodeEscapeProcessor.this.lambda$postProcess$2((Node) obj);
                    }
                });
            }
        }

        @Override
        public Provider preProcess(Provider innerProvider) {
            if (!ParserConfiguration.this.isPreprocessUnicodeEscapes()) {
                return innerProvider;
            }
            UnicodeEscapeProcessingProvider unicodeEscapeProcessingProvider = new UnicodeEscapeProcessingProvider(innerProvider);
            this._unicodeDecoder = unicodeEscapeProcessingProvider;
            return unicodeEscapeProcessingProvider;
        }

        public UnicodeEscapeProcessor(ParserConfiguration parserConfiguration, AnonymousClass1 anonymousClass1) {
            this();
        }
    }

    public ParserConfiguration() {
        ArrayList arrayList = new ArrayList();
        this.processors = arrayList;
        arrayList.add(new Supplier() {
            @Override
            public final Object get() {
                Processor lambda$new$0;
                lambda$new$0 = ParserConfiguration.this.lambda$new$0();
                return lambda$new$0;
            }
        });
        arrayList.add(new Supplier() {
            @Override
            public final Object get() {
                Processor lambda$new$1;
                lambda$new$1 = ParserConfiguration.this.lambda$new$1();
                return lambda$new$1;
            }
        });
        arrayList.add(new Supplier() {
            @Override
            public final Object get() {
                Processor lambda$new$2;
                lambda$new$2 = ParserConfiguration.this.lambda$new$2();
                return lambda$new$2;
            }
        });
        arrayList.add(new Supplier() {
            @Override
            public final Object get() {
                Processor lambda$new$3;
                lambda$new$3 = ParserConfiguration.this.lambda$new$3();
                return lambda$new$3;
            }
        });
        arrayList.add(new Supplier() {
            @Override
            public final Object get() {
                Processor lambda$new$4;
                lambda$new$4 = ParserConfiguration.this.lambda$new$4();
                return lambda$new$4;
            }
        });
        arrayList.add(new Supplier() {
            @Override
            public final Object get() {
                Processor lambda$new$5;
                lambda$new$5 = ParserConfiguration.this.lambda$new$5();
                return lambda$new$5;
            }
        });
    }

    public Processor lambda$new$0() {
        return new UnicodeEscapeProcessor(this, null);
    }

    public Processor lambda$new$1() {
        return new LineEndingProcessor(this, null);
    }

    public Processor lambda$new$2() {
        return new AnonymousClass1();
    }

    public Processor lambda$new$3() {
        return new AnonymousClass2();
    }

    public Processor lambda$new$4() {
        return new AnonymousClass3();
    }

    public Processor lambda$new$5() {
        return new AnonymousClass4();
    }

    public Charset getCharacterEncoding() {
        return this.characterEncoding;
    }

    public LanguageLevel getLanguageLevel() {
        return this.languageLevel;
    }

    public List<Supplier<Processor>> getProcessors() {
        return this.processors;
    }

    public Optional<SymbolResolver> getSymbolResolver() {
        return Optional.ofNullable(this.symbolResolver);
    }

    public int getTabSize() {
        return this.tabSize;
    }

    public boolean isAttributeComments() {
        return this.attributeComments;
    }

    public boolean isDetectOriginalLineSeparator() {
        return this.detectOriginalLineSeparator;
    }

    public boolean isDoNotAssignCommentsPrecedingEmptyLines() {
        return this.doNotAssignCommentsPrecedingEmptyLines;
    }

    public boolean isIgnoreAnnotationsWhenAttributingComments() {
        return this.ignoreAnnotationsWhenAttributingComments;
    }

    public boolean isLexicalPreservationEnabled() {
        return this.lexicalPreservationEnabled;
    }

    public boolean isPreprocessUnicodeEscapes() {
        return this.preprocessUnicodeEscapes;
    }

    public boolean isStoreTokens() {
        return this.storeTokens;
    }

    public ParserConfiguration setAttributeComments(boolean attributeComments) {
        this.attributeComments = attributeComments;
        return this;
    }

    public ParserConfiguration setCharacterEncoding(Charset characterEncoding) {
        this.characterEncoding = characterEncoding;
        return this;
    }

    public ParserConfiguration setDetectOriginalLineSeparator(boolean detectOriginalLineSeparator) {
        this.detectOriginalLineSeparator = detectOriginalLineSeparator;
        return this;
    }

    public ParserConfiguration setDoNotAssignCommentsPrecedingEmptyLines(boolean doNotAssignCommentsPrecedingEmptyLines) {
        this.doNotAssignCommentsPrecedingEmptyLines = doNotAssignCommentsPrecedingEmptyLines;
        return this;
    }

    public ParserConfiguration setIgnoreAnnotationsWhenAttributingComments(boolean ignoreAnnotationsWhenAttributingComments) {
        this.ignoreAnnotationsWhenAttributingComments = ignoreAnnotationsWhenAttributingComments;
        return this;
    }

    public ParserConfiguration setLanguageLevel(LanguageLevel languageLevel) {
        this.languageLevel = languageLevel;
        return this;
    }

    public ParserConfiguration setLexicalPreservationEnabled(boolean lexicalPreservationEnabled) {
        this.lexicalPreservationEnabled = lexicalPreservationEnabled;
        return this;
    }

    public ParserConfiguration setPreprocessUnicodeEscapes(boolean preprocessUnicodeEscapes) {
        this.preprocessUnicodeEscapes = preprocessUnicodeEscapes;
        return this;
    }

    public ParserConfiguration setStoreTokens(boolean storeTokens) {
        this.storeTokens = storeTokens;
        if (!storeTokens) {
            setAttributeComments(false);
        }
        return this;
    }

    public ParserConfiguration setSymbolResolver(SymbolResolver symbolResolver) {
        this.symbolResolver = symbolResolver;
        return this;
    }

    public ParserConfiguration setTabSize(int tabSize) {
        this.tabSize = tabSize;
        return this;
    }
}

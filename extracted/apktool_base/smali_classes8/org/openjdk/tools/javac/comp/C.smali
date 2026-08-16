.class public final synthetic Lorg/openjdk/tools/javac/comp/C;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/tools/javac/comp/Infer$FreeTypeListener;


# instance fields
.field public final synthetic a:Lorg/openjdk/tools/javac/comp/Attr;

.field public final synthetic b:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

.field public final synthetic c:Lorg/openjdk/tools/javac/comp/Env;

.field public final synthetic d:Lorg/openjdk/tools/javac/util/List;


# direct methods
.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/comp/Attr;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/C;->a:Lorg/openjdk/tools/javac/comp/Attr;

    iput-object p2, p0, Lorg/openjdk/tools/javac/comp/C;->b:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    iput-object p3, p0, Lorg/openjdk/tools/javac/comp/C;->c:Lorg/openjdk/tools/javac/comp/Env;

    iput-object p4, p0, Lorg/openjdk/tools/javac/comp/C;->d:Lorg/openjdk/tools/javac/util/List;

    return-void
.end method


# virtual methods
.method public final typesInferred(Lorg/openjdk/tools/javac/comp/InferenceContext;)V
    .locals 4

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/C;->a:Lorg/openjdk/tools/javac/comp/Attr;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/C;->b:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/C;->c:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/C;->d:Lorg/openjdk/tools/javac/util/List;

    invoke-static {v0, v1, v2, v3, p1}, Lorg/openjdk/tools/javac/comp/Attr;->g(Lorg/openjdk/tools/javac/comp/Attr;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/InferenceContext;)V

    return-void
.end method

.class public final synthetic Lorg/openjdk/tools/javac/comp/S;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/tools/javac/comp/Infer$FreeTypeListener;


# instance fields
.field public final synthetic a:Lorg/openjdk/tools/javac/comp/Check;

.field public final synthetic b:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

.field public final synthetic c:Lorg/openjdk/tools/javac/code/Type;

.field public final synthetic d:Lorg/openjdk/tools/javac/code/Type;

.field public final synthetic e:Lorg/openjdk/tools/javac/comp/Check$CheckContext;


# direct methods
.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/comp/Check;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/Check$CheckContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/S;->a:Lorg/openjdk/tools/javac/comp/Check;

    iput-object p2, p0, Lorg/openjdk/tools/javac/comp/S;->b:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    iput-object p3, p0, Lorg/openjdk/tools/javac/comp/S;->c:Lorg/openjdk/tools/javac/code/Type;

    iput-object p4, p0, Lorg/openjdk/tools/javac/comp/S;->d:Lorg/openjdk/tools/javac/code/Type;

    iput-object p5, p0, Lorg/openjdk/tools/javac/comp/S;->e:Lorg/openjdk/tools/javac/comp/Check$CheckContext;

    return-void
.end method


# virtual methods
.method public final typesInferred(Lorg/openjdk/tools/javac/comp/InferenceContext;)V
    .locals 6

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/S;->a:Lorg/openjdk/tools/javac/comp/Check;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/S;->b:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/S;->c:Lorg/openjdk/tools/javac/code/Type;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/S;->d:Lorg/openjdk/tools/javac/code/Type;

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/S;->e:Lorg/openjdk/tools/javac/comp/Check$CheckContext;

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/openjdk/tools/javac/comp/Check;->b(Lorg/openjdk/tools/javac/comp/Check;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/Check$CheckContext;Lorg/openjdk/tools/javac/comp/InferenceContext;)V

    return-void
.end method

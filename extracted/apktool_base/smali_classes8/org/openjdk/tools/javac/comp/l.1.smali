.class public final synthetic Lorg/openjdk/tools/javac/comp/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lorg/openjdk/tools/javac/comp/Annotate;

.field public final synthetic c:Lorg/openjdk/tools/javac/code/Symbol;

.field public final synthetic d:Lorg/openjdk/tools/javac/comp/Env;

.field public final synthetic e:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

.field public final synthetic f:Lorg/openjdk/tools/javac/util/List;


# direct methods
.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/comp/Annotate;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/l;->b:Lorg/openjdk/tools/javac/comp/Annotate;

    iput-object p2, p0, Lorg/openjdk/tools/javac/comp/l;->c:Lorg/openjdk/tools/javac/code/Symbol;

    iput-object p3, p0, Lorg/openjdk/tools/javac/comp/l;->d:Lorg/openjdk/tools/javac/comp/Env;

    iput-object p4, p0, Lorg/openjdk/tools/javac/comp/l;->e:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    iput-object p5, p0, Lorg/openjdk/tools/javac/comp/l;->f:Lorg/openjdk/tools/javac/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/l;->b:Lorg/openjdk/tools/javac/comp/Annotate;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/l;->c:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/l;->d:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/l;->e:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/l;->f:Lorg/openjdk/tools/javac/util/List;

    invoke-static {v0, v1, v2, v3, v4}, Lorg/openjdk/tools/javac/comp/Annotate;->a(Lorg/openjdk/tools/javac/comp/Annotate;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/List;)V

    return-void
.end method

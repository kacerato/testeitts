.class public final synthetic Lcom/android/tools/r8/graph/r6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/graph/A0;


# instance fields
.field public final synthetic a:Ljava/io/PrintStream;


# direct methods
.method public synthetic constructor <init>(Ljava/io/PrintStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/graph/r6;->a:Ljava/io/PrintStream;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/E0;)Ljava/io/PrintStream;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/r6;->a:Ljava/io/PrintStream;

    invoke-static {v0, p1}, Lcom/android/tools/r8/graph/B0;->a(Ljava/io/PrintStream;Lcom/android/tools/r8/graph/E0;)Ljava/io/PrintStream;

    move-result-object p1

    return-object p1
.end method

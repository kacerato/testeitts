.class public final synthetic Lcom/android/tools/r8/shaking/R6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Ljava/util/function/Predicate;

.field public final synthetic c:Lcom/android/tools/r8/shaking/i;

.field public final synthetic d:Ljava/io/PrintStream;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Predicate;Lcom/android/tools/r8/shaking/i;Ljava/io/PrintStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/R6;->b:Ljava/util/function/Predicate;

    iput-object p2, p0, Lcom/android/tools/r8/shaking/R6;->c:Lcom/android/tools/r8/shaking/i;

    iput-object p3, p0, Lcom/android/tools/r8/shaking/R6;->d:Ljava/io/PrintStream;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/shaking/R6;->b:Ljava/util/function/Predicate;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/R6;->c:Lcom/android/tools/r8/shaking/i;

    iget-object v2, p0, Lcom/android/tools/r8/shaking/R6;->d:Ljava/io/PrintStream;

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    invoke-static {v0, v1, v2, p1}, Lcom/android/tools/r8/shaking/I4;->a(Ljava/util/function/Predicate;Lcom/android/tools/r8/shaking/i;Ljava/io/PrintStream;Lcom/android/tools/r8/graph/A2;)V

    return-void
.end method

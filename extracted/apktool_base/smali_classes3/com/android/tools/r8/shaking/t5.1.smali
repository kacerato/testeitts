.class public final synthetic Lcom/android/tools/r8/shaking/t5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/graph/O5;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/graph/O5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/t5;->b:Lcom/android/tools/r8/graph/O5;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/t5;->b:Lcom/android/tools/r8/graph/O5;

    check-cast p1, Lcom/android/tools/r8/shaking/s2;

    invoke-static {v0, p1}, Lcom/android/tools/r8/shaking/D4;->a(Lcom/android/tools/r8/graph/O5;Lcom/android/tools/r8/shaking/s2;)Z

    move-result p1

    return p1
.end method

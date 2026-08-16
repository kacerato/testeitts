.class public final synthetic Lcom/android/tools/r8/shaking/B6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/shaking/I4;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/shaking/I4;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/B6;->b:Lcom/android/tools/r8/shaking/I4;

    iput-boolean p2, p0, Lcom/android/tools/r8/shaking/B6;->c:Z

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/shaking/B6;->b:Lcom/android/tools/r8/shaking/I4;

    iget-boolean v1, p0, Lcom/android/tools/r8/shaking/B6;->c:Z

    check-cast p1, Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/shaking/I4;->a(ZLcom/android/tools/r8/graph/M2;)Z

    move-result p1

    return p1
.end method

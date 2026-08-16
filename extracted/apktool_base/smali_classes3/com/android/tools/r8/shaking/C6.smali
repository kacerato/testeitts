.class public final synthetic Lcom/android/tools/r8/shaking/C6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/shaking/i4;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/shaking/i4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/C6;->b:Lcom/android/tools/r8/shaking/i4;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/C6;->b:Lcom/android/tools/r8/shaking/i4;

    check-cast p1, Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/shaking/i4;->b(Lcom/android/tools/r8/graph/M2;)Z

    move-result p1

    return p1
.end method

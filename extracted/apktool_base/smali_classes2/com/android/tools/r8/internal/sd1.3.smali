.class public final synthetic Lcom/android/tools/r8/internal/sd1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/tools/r8/internal/sd1;->b:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/sd1;->b:I

    check-cast p1, Lcom/android/tools/r8/retrace/RetracedTypeReference;

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/hk0;->a(ILcom/android/tools/r8/retrace/RetracedTypeReference;)Lcom/android/tools/r8/retrace/RetracedTypeReference;

    move-result-object p1

    return-object p1
.end method

.class public final synthetic Lcom/android/tools/r8/internal/kY0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/bT;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/bT;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/kY0;->b:Lcom/android/tools/r8/internal/bT;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/kY0;->b:Lcom/android/tools/r8/internal/bT;

    check-cast p1, Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/bT;->a(Lcom/android/tools/r8/internal/W5;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

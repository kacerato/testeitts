.class public final synthetic Lcom/android/tools/r8/internal/GF1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/V60;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/zu;

.field public final synthetic c:Lcom/android/tools/r8/internal/de;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/zu;Lcom/android/tools/r8/internal/de;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/GF1;->b:Lcom/android/tools/r8/internal/zu;

    iput-object p2, p0, Lcom/android/tools/r8/internal/GF1;->c:Lcom/android/tools/r8/internal/de;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/GF1;->b:Lcom/android/tools/r8/internal/zu;

    iget-object v1, p0, Lcom/android/tools/r8/internal/GF1;->c:Lcom/android/tools/r8/internal/de;

    check-cast p1, Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/zu;->b(Lcom/android/tools/r8/internal/de;Lcom/android/tools/r8/internal/xw0;)Z

    move-result p1

    return p1
.end method

.class public final synthetic Lcom/android/tools/r8/internal/ZZ0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/V60;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/Hz;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/Hz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/ZZ0;->b:Lcom/android/tools/r8/internal/Hz;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/ZZ0;->b:Lcom/android/tools/r8/internal/Hz;

    check-cast p1, Lcom/android/tools/r8/internal/Z40;

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/W40;->a(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Z40;)Z

    move-result p1

    return p1
.end method

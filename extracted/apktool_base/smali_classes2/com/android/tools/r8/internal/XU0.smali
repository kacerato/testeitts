.class public final synthetic Lcom/android/tools/r8/internal/XU0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/V60;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/Q7;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/Q7;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/XU0;->b:Lcom/android/tools/r8/internal/Q7;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/XU0;->b:Lcom/android/tools/r8/internal/Q7;

    check-cast p1, Lcom/android/tools/r8/internal/Q7;

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/R7;->a(Lcom/android/tools/r8/internal/Q7;Lcom/android/tools/r8/internal/Q7;)Z

    move-result p1

    return p1
.end method

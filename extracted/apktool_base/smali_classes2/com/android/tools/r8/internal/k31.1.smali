.class public final synthetic Lcom/android/tools/r8/internal/k31;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/fB;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/fB;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/k31;->b:Lcom/android/tools/r8/internal/fB;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/k31;->b:Lcom/android/tools/r8/internal/fB;

    check-cast p1, Lcom/android/tools/r8/internal/W5;

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/Y5;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/W5;)Lcom/android/tools/r8/internal/W5;

    move-result-object p1

    return-object p1
.end method

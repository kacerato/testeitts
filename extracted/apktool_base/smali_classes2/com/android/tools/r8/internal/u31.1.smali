.class public final synthetic Lcom/android/tools/r8/internal/u31;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/Ya;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/Ya;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/u31;->b:Lcom/android/tools/r8/internal/Ya;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/u31;->b:Lcom/android/tools/r8/internal/Ya;

    check-cast p1, Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Ya;->b(Lcom/android/tools/r8/internal/W5;)Lcom/android/tools/r8/internal/Xa;

    move-result-object p1

    return-object p1
.end method

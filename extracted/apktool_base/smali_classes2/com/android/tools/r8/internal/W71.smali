.class public final synthetic Lcom/android/tools/r8/internal/W71;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/cx0;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/cx0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/W71;->b:Lcom/android/tools/r8/internal/cx0;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/W71;->b:Lcom/android/tools/r8/internal/cx0;

    check-cast p1, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/cx0;->a(Lcom/android/tools/r8/graph/J2;)V

    return-void
.end method

.class public final synthetic Lcom/android/tools/r8/internal/Iv1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/EE;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/EE;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Iv1;->b:Lcom/android/tools/r8/internal/EE;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Iv1;->b:Lcom/android/tools/r8/internal/EE;

    check-cast p1, Lcom/android/tools/r8/internal/zE;

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    return-void
.end method

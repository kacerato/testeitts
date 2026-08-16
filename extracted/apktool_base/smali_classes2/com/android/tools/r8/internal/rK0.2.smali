.class public final synthetic Lcom/android/tools/r8/internal/rK0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Ljava/util/ListIterator;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ListIterator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/rK0;->b:Ljava/util/ListIterator;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/rK0;->b:Ljava/util/ListIterator;

    check-cast p1, Lcom/android/tools/r8/internal/W5;

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    return-void
.end method

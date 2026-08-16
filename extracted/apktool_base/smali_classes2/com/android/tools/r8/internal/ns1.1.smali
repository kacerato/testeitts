.class public final synthetic Lcom/android/tools/r8/internal/ns1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/rn0;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/rn0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/ns1;->b:Lcom/android/tools/r8/internal/rn0;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/ns1;->b:Lcom/android/tools/r8/internal/rn0;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/rn0;->a(Ljava/util/Map$Entry;)Z

    move-result p1

    return p1
.end method

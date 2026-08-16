.class public final synthetic Lcom/android/tools/r8/internal/V61;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Gx;

    check-cast p1, Ljava/util/LinkedHashSet;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/Gx;-><init>(Ljava/util/LinkedHashSet;)V

    return-object v0
.end method

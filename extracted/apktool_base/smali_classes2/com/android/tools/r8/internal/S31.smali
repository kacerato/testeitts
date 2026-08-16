.class public final synthetic Lcom/android/tools/r8/internal/S31;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Ljava/util/function/Supplier;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Supplier;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/S31;->b:Ljava/util/function/Supplier;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/S31;->b:Ljava/util/function/Supplier;

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/Z70;->b(Ljava/util/function/Supplier;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    return-object p1
.end method

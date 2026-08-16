.class public final synthetic Lcom/android/tools/r8/internal/NF0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Jy;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/GY;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/GY;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/NF0;->b:Lcom/android/tools/r8/internal/GY;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/NF0;->b:Lcom/android/tools/r8/internal/GY;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/GY;->c(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

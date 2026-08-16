.class public final Lcom/android/tools/r8/internal/Oc0;
.super Lcom/android/tools/r8/internal/Sc0;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/A30;


# instance fields
.field public final synthetic h:Lcom/android/tools/r8/internal/Uc0;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/Uc0;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/Oc0;->h:Lcom/android/tools/r8/internal/Uc0;

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/Sc0;-><init>(Lcom/android/tools/r8/internal/Uc0;)V

    return-void
.end method


# virtual methods
.method public final next()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Oc0;->h:Lcom/android/tools/r8/internal/Uc0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/Uc0;->b:[Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Sc0;->a()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

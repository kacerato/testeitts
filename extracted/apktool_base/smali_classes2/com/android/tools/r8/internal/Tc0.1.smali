.class public final Lcom/android/tools/r8/internal/Tc0;
.super Lcom/android/tools/r8/internal/Sc0;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/a7;


# instance fields
.field public final synthetic h:Lcom/android/tools/r8/internal/Uc0;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/Uc0;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/Tc0;->h:Lcom/android/tools/r8/internal/Uc0;

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/Sc0;-><init>(Lcom/android/tools/r8/internal/Uc0;)V

    return-void
.end method


# virtual methods
.method public final next()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Tc0;->h:Lcom/android/tools/r8/internal/Uc0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/Uc0;->c:[Z

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Sc0;->a()I

    move-result v1

    aget-boolean v0, v0, v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final q()Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Tc0;->h:Lcom/android/tools/r8/internal/Uc0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/Uc0;->c:[Z

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Sc0;->a()I

    move-result v1

    aget-boolean v0, v0, v1

    return v0
.end method

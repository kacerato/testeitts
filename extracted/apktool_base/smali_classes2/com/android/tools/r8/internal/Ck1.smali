.class public final synthetic Lcom/android/tools/r8/internal/Ck1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/aI;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/mS;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/mS;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Ck1;->a:Lcom/android/tools/r8/internal/mS;

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ck1;->a:Lcom/android/tools/r8/internal/mS;

    check-cast p2, Lcom/android/tools/r8/internal/FT;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/mS;->c(ILcom/android/tools/r8/internal/FT;)Z

    move-result p1

    return p1
.end method

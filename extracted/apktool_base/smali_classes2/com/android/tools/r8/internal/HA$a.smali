.class public Lcom/android/tools/r8/internal/HA$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/profile/art/HumanReadableArtProfileParserBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/internal/HA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/util/function/Consumer;

.field public b:Lcom/android/tools/r8/profile/art/ArtProfileBuilder;

.field public c:Lcom/android/tools/r8/profile/art/ArtProfileRulePredicate;

.field public d:Lcom/android/tools/r8/internal/Ef0;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/tools/r8/internal/n2;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/n2;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/HA$a;->c:Lcom/android/tools/r8/profile/art/ArtProfileRulePredicate;

    return-void
.end method


# virtual methods
.method public a(Lcom/android/tools/r8/internal/Ef0;)Lcom/android/tools/r8/internal/HA$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/tools/r8/internal/HA$a;->d:Lcom/android/tools/r8/internal/Ef0;

    return-object p0
.end method

.method public a(Lcom/android/tools/r8/profile/art/ArtProfileBuilder;)Lcom/android/tools/r8/internal/HA$a;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/android/tools/r8/internal/HA$a;->b:Lcom/android/tools/r8/profile/art/ArtProfileBuilder;

    return-object p0
.end method

.method public a()Lcom/android/tools/r8/internal/HA;
    .locals 5

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/HA$a;->a:Ljava/util/function/Consumer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/HA$a;->d:Lcom/android/tools/r8/internal/Ef0;

    if-eqz v0, :cond_0

    .line 4
    new-instance v1, Lcom/android/tools/r8/internal/NG0;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/NG0;-><init>(Lcom/android/tools/r8/internal/Ef0;)V

    iput-object v1, p0, Lcom/android/tools/r8/internal/HA$a;->a:Ljava/util/function/Consumer;

    .line 5
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/HA;

    iget-object v1, p0, Lcom/android/tools/r8/internal/HA$a;->a:Ljava/util/function/Consumer;

    iget-object v2, p0, Lcom/android/tools/r8/internal/HA$a;->b:Lcom/android/tools/r8/profile/art/ArtProfileBuilder;

    iget-object v3, p0, Lcom/android/tools/r8/internal/HA$a;->c:Lcom/android/tools/r8/profile/art/ArtProfileRulePredicate;

    iget-object v4, p0, Lcom/android/tools/r8/internal/HA$a;->d:Lcom/android/tools/r8/internal/Ef0;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/tools/r8/internal/HA;-><init>(Ljava/util/function/Consumer;Lcom/android/tools/r8/profile/art/ArtProfileBuilder;Lcom/android/tools/r8/profile/art/ArtProfileRulePredicate;Lcom/android/tools/r8/internal/Ef0;)V

    return-object v0
.end method

.method public final setRulePredicate(Lcom/android/tools/r8/profile/art/ArtProfileRulePredicate;)Lcom/android/tools/r8/profile/art/HumanReadableArtProfileParserBuilder;
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/HA$a;->c:Lcom/android/tools/r8/profile/art/ArtProfileRulePredicate;

    return-object p0
.end method

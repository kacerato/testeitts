.class public final Lcom/android/tools/r8/internal/f4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/profile/art/ArtProfileClassRuleBuilder;


# instance fields
.field public a:Lcom/android/tools/r8/references/ClassReference;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final setClassReference(Lcom/android/tools/r8/references/ClassReference;)Lcom/android/tools/r8/profile/art/ArtProfileClassRuleBuilder;
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/f4;->a:Lcom/android/tools/r8/references/ClassReference;

    return-object p0
.end method

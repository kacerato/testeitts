.class public final Lcom/android/tools/r8/internal/u4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/profile/art/ArtProfileClassRuleBuilder;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/w4;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/w4;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/u4;->a:Lcom/android/tools/r8/internal/w4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final setClassReference(Lcom/android/tools/r8/references/ClassReference;)Lcom/android/tools/r8/profile/art/ArtProfileClassRuleBuilder;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/u4;->a:Lcom/android/tools/r8/internal/w4;

    iget-object v0, v0, Lcom/android/tools/r8/internal/w4;->a:Ljava/io/OutputStreamWriter;

    invoke-static {p1}, Lcom/android/tools/r8/internal/Xd;->a(Lcom/android/tools/r8/references/ClassReference;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/x4;->a(Ljava/io/OutputStreamWriter;Ljava/lang/String;)V

    return-object p0
.end method

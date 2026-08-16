.class public Lcom/android/tools/r8/internal/p4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/profile/art/ArtProfileProvider;

.field public final b:Lcom/android/tools/r8/profile/art/ArtProfileConsumer;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/profile/art/ArtProfileProvider;Lcom/android/tools/r8/profile/art/ArtProfileConsumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/p4;->a:Lcom/android/tools/r8/profile/art/ArtProfileProvider;

    iput-object p2, p0, Lcom/android/tools/r8/internal/p4;->b:Lcom/android/tools/r8/profile/art/ArtProfileConsumer;

    return-void
.end method


# virtual methods
.method public a()Lcom/android/tools/r8/profile/art/ArtProfileProvider;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/p4;->a:Lcom/android/tools/r8/profile/art/ArtProfileProvider;

    return-object v0
.end method

.method public b()Lcom/android/tools/r8/profile/art/ArtProfileConsumer;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/p4;->b:Lcom/android/tools/r8/profile/art/ArtProfileConsumer;

    return-object v0
.end method

.class public final synthetic Lcom/android/tools/r8/internal/x61;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Wr0;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/profile/art/ArtProfileRuleConsumer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/profile/art/ArtProfileRuleConsumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/x61;->a:Lcom/android/tools/r8/profile/art/ArtProfileRuleConsumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/x61;->a:Lcom/android/tools/r8/profile/art/ArtProfileRuleConsumer;

    check-cast p1, Lcom/android/tools/r8/internal/j4;

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/c4;->a(Lcom/android/tools/r8/profile/art/ArtProfileRuleConsumer;Lcom/android/tools/r8/internal/j4;)V

    return-void
.end method

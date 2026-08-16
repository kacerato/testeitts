.class public final Lcom/android/tools/r8/internal/KR;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/ws0;


# instance fields
.field public a:Lcom/android/tools/r8/internal/C2;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Z

.field public f:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "j$/"

    iput-object v0, p0, Lcom/android/tools/r8/internal/KR;->b:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/KR;->e:Z

    return-void
.end method


# virtual methods
.method public final a(Z)Lcom/android/tools/r8/internal/ws0;
    .locals 0

    iput-boolean p1, p0, Lcom/android/tools/r8/internal/KR;->e:Z

    return-object p0
.end method

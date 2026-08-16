.class public Lcom/android/tools/r8/shaking/R3$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/shaking/R3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final synthetic i:Z = true


# instance fields
.field public a:Ljava/util/List;

.field public b:Lcom/android/tools/r8/shaking/S2;

.field public final c:Lcom/android/tools/r8/shaking/S2;

.field public d:Lcom/android/tools/r8/shaking/U3;

.field public e:Lcom/android/tools/r8/shaking/i4;

.field public f:Lcom/android/tools/r8/shaking/Y3;

.field public g:Ljava/util/List;

.field public h:Lcom/android/tools/r8/shaking/T3;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/android/tools/r8/shaking/R3$a;->a:Ljava/util/List;

    new-instance v0, Lcom/android/tools/r8/shaking/S2;

    invoke-direct {v0}, Lcom/android/tools/r8/shaking/S2;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/shaking/R3$a;->b:Lcom/android/tools/r8/shaking/S2;

    new-instance v0, Lcom/android/tools/r8/shaking/S2;

    invoke-direct {v0}, Lcom/android/tools/r8/shaking/S2;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/shaking/R3$a;->c:Lcom/android/tools/r8/shaking/S2;

    return-void
.end method


# virtual methods
.method public a(Lcom/android/tools/r8/shaking/U3;)Lcom/android/tools/r8/shaking/R3$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/tools/r8/shaking/R3$a;->d:Lcom/android/tools/r8/shaking/U3;

    return-object p0
.end method

.method public a()Lcom/android/tools/r8/shaking/R3;
    .locals 10

    .line 2
    sget-boolean v0, Lcom/android/tools/r8/shaking/R3$a;->i:Z

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/shaking/R3$a;->d:Lcom/android/tools/r8/shaking/U3;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 5
    :cond_1
    :goto_0
    new-instance v0, Lcom/android/tools/r8/shaking/R3;

    iget-object v2, p0, Lcom/android/tools/r8/shaking/R3$a;->a:Ljava/util/List;

    iget-object v3, p0, Lcom/android/tools/r8/shaking/R3$a;->b:Lcom/android/tools/r8/shaking/S2;

    iget-object v4, p0, Lcom/android/tools/r8/shaking/R3$a;->c:Lcom/android/tools/r8/shaking/S2;

    iget-object v5, p0, Lcom/android/tools/r8/shaking/R3$a;->d:Lcom/android/tools/r8/shaking/U3;

    iget-object v6, p0, Lcom/android/tools/r8/shaking/R3$a;->e:Lcom/android/tools/r8/shaking/i4;

    iget-object v7, p0, Lcom/android/tools/r8/shaking/R3$a;->f:Lcom/android/tools/r8/shaking/Y3;

    iget-object v8, p0, Lcom/android/tools/r8/shaking/R3$a;->g:Ljava/util/List;

    iget-object v9, p0, Lcom/android/tools/r8/shaking/R3$a;->h:Lcom/android/tools/r8/shaking/T3;

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/android/tools/r8/shaking/R3;-><init>(Ljava/util/List;Lcom/android/tools/r8/shaking/S2;Lcom/android/tools/r8/shaking/S2;Lcom/android/tools/r8/shaking/U3;Lcom/android/tools/r8/shaking/i4;Lcom/android/tools/r8/shaking/Y3;Ljava/util/List;Lcom/android/tools/r8/shaking/T3;)V

    return-object v0
.end method

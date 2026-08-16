.class public Lcom/android/tools/r8/diagnostic/internal/a;
.super Lcom/android/tools/r8/diagnostic/internal/c;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/diagnostic/DefinitionClassContext;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/r8/diagnostic/internal/a$a;
    }
.end annotation


# instance fields
.field public final b:Lcom/android/tools/r8/references/ClassReference;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/references/ClassReference;Lcom/android/tools/r8/origin/Origin;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/android/tools/r8/diagnostic/internal/c;-><init>(Lcom/android/tools/r8/origin/Origin;)V

    iput-object p1, p0, Lcom/android/tools/r8/diagnostic/internal/a;->b:Lcom/android/tools/r8/references/ClassReference;

    return-void
.end method

.method public static a()Lcom/android/tools/r8/diagnostic/internal/a$a;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/diagnostic/internal/a$a;

    invoke-direct {v0}, Lcom/android/tools/r8/diagnostic/internal/a$a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final getClassReference()Lcom/android/tools/r8/references/ClassReference;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/diagnostic/internal/a;->b:Lcom/android/tools/r8/references/ClassReference;

    return-object v0
.end method

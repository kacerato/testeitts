.class public final Lcom/android/tools/r8/internal/fg0;
.super Lcom/android/tools/r8/internal/ZQ;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/ny;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/ig0;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/ig0;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/fg0;->b:Lcom/android/tools/r8/internal/ig0;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/ZQ;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Lcom/android/tools/r8/internal/ng0;

    const-string v0, "it"

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/ng0;->a(Z)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/fg0;->b:Lcom/android/tools/r8/internal/ig0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/ig0;->e:Ljava/util/HashSet;

    new-instance v1, Lcom/android/tools/r8/internal/Rf0;

    iget-object v2, p1, Lcom/android/tools/r8/internal/ng0;->c:Lcom/android/tools/r8/internal/lg0;

    iget-object v3, p1, Lcom/android/tools/r8/internal/ng0;->d:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/tools/r8/internal/ng0;->e:Ljava/lang/String;

    invoke-direct {v1, v2, v3, p1}, Lcom/android/tools/r8/internal/Rf0;-><init>(Lcom/android/tools/r8/internal/lg0;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object p1, Lcom/android/tools/r8/internal/iv0;->a:Lcom/android/tools/r8/internal/iv0;

    return-object p1
.end method

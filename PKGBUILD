# Maintainer: fiftydinar <srbaizoki4@tuta.io>
pkgname=tuxfootball
pkgver=0.3.1
pkgrel=1
pkgdesc="A 2D soccer game featuring Tux, inspired by classics like Kick Off and Sensible Soccer."
arch=('x86_64' 'aarch64')
url="https://sourceforge.net/projects/tuxfootball/"
license=('GPL2')
depends=('sdl2' 'sdl12-compat' 'sdl_image' 'sdl_mixer' 'libvorbis' 'libmikmod' 'pipewire-audio')
makedepends=('automake' 'autoconf')
source=("https://master.dl.sourceforge.net/project/tuxfootball/0.3/tuxfootball-$pkgver.tar.gz?viasf=1")
sha256sums=('44056c15572c2a3f0e3794719961915af15fef5f05596d2ef3f9e247f8a1f3e5')

prepare() {
  cd "$srcdir/$pkgname-$pkgver"
  cp /usr/share/automake-*/config.guess .
  cp /usr/share/automake-*/config.sub .
}

build() {
  cd "$srcdir/$pkgname-$pkgver"
  ./configure --prefix=/usr
  make
}

package() {
  cd "$srcdir/$pkgname-$pkgver"
  make DESTDIR="$pkgdir/" install
}

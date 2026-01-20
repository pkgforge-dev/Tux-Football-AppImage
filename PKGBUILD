# Maintainer: fiftydinar <srbaizoki4@tuta.io>
pkgname=tuxfootball
pkgver=0.3.1
pkgrel=1
pkgdesc="A 2D soccer game featuring Tux, inspired by classics like Kick Off and Sensible Soccer."
arch=('x86_64')
url="https://sourceforge.net/projects/tuxfootball/"
license=('GPL2')
depends=('sdl' 'sdl_image' 'sdl_mixer' 'libvorbis')
makedepends=('cmake')
source=("https://downloads.sourceforge.net/project/tuxfootball/tuxfootball-$pkgver.tar.gz")
sha256sums=('444e27f474936d529b5379f8864389146f903a3556488d0859a8c6239f69796e')

build() {
  cd "$srcdir/$pkgname-$pkgver"
  
  mkdir -p build && cd build
  cmake .. \
    -DCMAKE_INSTALL_PREFIX=/usr
  make
}

package() {
  cd "$srcdir/$pkgname-$pkgver/build"
  make DESTDIR="$pkgdir/" install
}
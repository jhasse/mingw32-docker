FROM fedora:27
RUN dnf install -y \
	mingw32-libgomp \
	mingw32-bzip2-static \
	mingw32-zlib-static \
	mingw32-libpng-static \
	mingw32-libjpeg-turbo-static \
	mingw32-libtiff-static \
	mingw32-expat-static \
	mingw32-freetype-static \
	mingw32-dlfcn \
	mingw32-boost \
	mingw32-gcc-gfortran \
	mingw32-openssl-static \
	mingw32-winpthreads-static \
	python3 \
	git \
	sshpass \
	wine-core.i686 \
	autogen \
	p7zip-plugins

RUN ln -s /usr/bin/i686-w64-mingw32-ar /usr/local/bin/ar
RUN ln -s /usr/bin/i686-w64-mingw32-strip /usr/local/bin/strip

ENV CC i686-w64-mingw32-gcc
ENV CXX i686-w64-mingw32-c++
ENV FC i686-w64-mingw32-gfortran

ENV LANG C.UTF-8

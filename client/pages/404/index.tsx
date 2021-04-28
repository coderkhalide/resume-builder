import { Footer, HeaderNavbar } from '@component';
import Head from 'next/head';
import Link from 'next/link';
import React from 'react';

import styles from './style.module.scss';

export default function Custom404 () {
  return (
    <div className={styles.errPage}>
      <Head>
        <title>404 Not Found | wtfresume</title>
      </Head>
      <HeaderNavbar/>

      <div className="container">
        <div className={styles.insideErr}>
          <h1>404 | Page Not Found</h1>
          <Link href="/">
            <a>Home Page</a>
          </Link>
        </div>
      </div>

      <Footer/>
    </div>
  );
}
